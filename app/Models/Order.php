<?php
// File: app/Models/Order.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Jobs\SendOrderConfirmationSms;
use App\Services\SteadfastCourierService;

class Order extends Model
{
    use HasFactory;

    // Protect only the primary key; allow the courier fields to be mass-assigned
    protected $guarded = ['id'];
    protected $fillable = [
        'consignment_id',
        'tracking_code',
        'delivery_status',
        'delivery_status_updated_at',
        'delivery_response',
    ];

    protected $casts = [
        'delivery_response'            => 'array',
        'delivery_status_updated_at'   => 'datetime',
    ];

    // Add these for proper observer tracking
    protected $attributes = [];
    
    protected static function boot()
    {
        parent::boot();
        
        // Dispatch SMS confirmation job when order is created
        static::created(function ($order) {
            // Only send SMS if phone number exists and SMS is enabled
            if (!empty($order->phone) && setting('sms_config_status') == 1) {
                // Dispatch SMS job with 5-minute delay
                SendOrderConfirmationSms::dispatch($order->id)
                    ->delay(now()->addMinutes(5));
            }
        });
    }

    public function orderDetails()
    {
        return $this->hasMany(OrderDetails::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function commission()
    {
        return $this->hasOne(Commission::class, 'order_id');
    }

    public function smsLogs()
    {
        return $this->hasMany(SmsLog::class);
    }

    // Status constants for better code readability
    const STATUS_PENDING            = 0;
    const STATUS_PROCESSING         = 1;
    const STATUS_CANCELLED          = 2;
    const STATUS_DELIVERED          = 3;
    const STATUS_SHIPPING           = 4;
    const STATUS_REFUND             = 5;
    const STATUS_RETURN_REQUESTED   = 6;
    const STATUS_RETURN_ACCEPTED    = 7;
    const STATUS_RETURNED           = 8;

    public function getStatusTextAttribute()
    {
        $statuses = [
            self::STATUS_PENDING            => 'Pending',
            self::STATUS_PROCESSING         => 'Processing',
            self::STATUS_CANCELLED          => 'Cancelled',
            self::STATUS_DELIVERED          => 'Delivered',
            self::STATUS_SHIPPING           => 'Shipping',
            self::STATUS_REFUND             => 'Refund',
            self::STATUS_RETURN_REQUESTED   => 'Return Requested',
            self::STATUS_RETURN_ACCEPTED    => 'Return Accepted',
            self::STATUS_RETURNED           => 'Returned',
        ];

        return $statuses[$this->status] ?? 'Unknown';
    }

    public function getFormattedPhoneAttribute()
    {
        $phone = $this->phone;
        
        // Format phone number for display (e.g., +880 1XXX-XXXXXX)
        if (strlen($phone) >= 11 && substr($phone, 0, 3) === '880') {
            return '+880 '.substr($phone, 3, 4).'-'.substr($phone, 7);
        }
        
        return $phone;
    }

    /**
     * Get delivery status badge HTML
     */
    public function getDeliveryStatusBadgeAttribute()
    {
        if (!$this->delivery_status) {
            return '<span class="badge badge-secondary">No Tracking</span>';
        }

        return SteadfastCourierService::getStatusBadge($this->delivery_status);
    }

    /**
     * Get human-readable delivery status
     */
    public function getDeliveryStatusTextAttribute()
    {
        if (!$this->delivery_status) {
            return 'No Tracking Data';
        }

        return SteadfastCourierService::getDeliveryStatusText($this->delivery_status);
    }

    /**
     * Check if order has been sent to courier
     */
    public function hasBeenSentToCourier()
    {
        return !empty($this->consignment_id) && !empty($this->tracking_code);
    }

    /**
     * Update delivery status from Steadfast
     */
    public function updateDeliveryStatus()
    {
        if (!$this->hasBeenSentToCourier()) {
            return false;
        }

        $steadfastService = new SteadfastCourierService();
        if (!$steadfastService->isConfigured()) {
            return false;
        }

        // Try to get status by consignment ID first, then by invoice
        $response = $steadfastService->getStatusByConsignmentId($this->consignment_id);
        if ($response['status'] !== 200) {
            $response = $steadfastService->getStatusByInvoice($this->invoice);
        }

        if ($response['status'] === 200 && isset($response['delivery_status'])) {
            $this->update([
                'delivery_status'            => $response['delivery_status'],
                'delivery_status_updated_at' => now(),
                'delivery_response'          => $response,
            ]);

            return true;
        }

        return false;
    }

    /**
     * Send order to Steadfast courier
     */
    public function sendToSteadfast($note = null)
    {
        $steadfastService = new SteadfastCourierService();
        if (!$steadfastService->isConfigured()) {
            return [
                'success' => false,
                'message' => 'Steadfast courier is not configured properly'
            ];
        }

        // Prepare data
        $invoice          = $this->invoice;
        $recipientName    = $this->first_name.' '.$this->last_name;
        $recipientPhone   = $this->phone;
        $recipientAddress = $this->address.', '.$this->town.', '.$this->district;
        if ($this->post_code) {
            $recipientAddress .= ', '.$this->post_code;
        }
        // COD amount - if already paid, set to 0
        $codAmount = $this->pay_staus == 1 ? 0 : $this->total;

        $response = $steadfastService->createOrder(
            $invoice,
            $recipientName,
            $recipientPhone,
            $recipientAddress,
            $codAmount,
            $note ?: 'Order from '.(setting('APP_NAME') ?: 'Website')
        );

        if ($response['status'] === 200 && isset($response['consignment'])) {
            $this->update([
                'consignment_id'             => $response['consignment']['consignment_id'],
                'tracking_code'              => $response['consignment']['tracking_code'],
                'delivery_status'            => $response['consignment']['status'],
                'delivery_status_updated_at' => now(),
                'delivery_response'          => $response,
                'status'                     => 9 // “Sent to Courier”
            ]);

            return [
                'success' => true,
                'message' => 'Order sent to courier successfully',
                'data'    => $response['consignment'],
            ];
        }

        return [
            'success' => false,
            'message' => $response['message'] ?? 'Failed to send order to courier',
            'data'    => $response,
        ];
    }

    /**
     * Get tracking URL (if available)
     */
    public function getTrackingUrlAttribute()
    {
        if (!$this->tracking_code) {
            return null;
        }

        return "https://portal.packzy.com/track/{$this->tracking_code}";
    }

    /**
     * Scope for orders sent to courier
     */
    public function scopeSentToCourier($query)
    {
        return $query->whereNotNull('consignment_id')
                     ->whereNotNull('tracking_code');
    }

    /**
     * Scope for orders with specific delivery status
     */
    public function scopeWithDeliveryStatus($query, $status)
    {
        return $query->where('delivery_status', $status);
    }
}
