<?php
// File: app/Models/Order.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Jobs\SendOrderConfirmationSms;

class Order extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

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
    const STATUS_PENDING = 0;
    const STATUS_PROCESSING = 1;
    const STATUS_CANCELLED = 2;
    const STATUS_DELIVERED = 3;
    const STATUS_SHIPPING = 4;
    const STATUS_REFUND = 5;
    const STATUS_RETURN_REQUESTED = 6;
    const STATUS_RETURN_ACCEPTED = 7;
    const STATUS_RETURNED = 8;

    public function getStatusTextAttribute()
    {
        $statuses = [
            self::STATUS_PENDING => 'Pending',
            self::STATUS_PROCESSING => 'Processing',
            self::STATUS_CANCELLED => 'Cancelled',
            self::STATUS_DELIVERED => 'Delivered',
            self::STATUS_SHIPPING => 'Shipping',
            self::STATUS_REFUND => 'Refund',
            self::STATUS_RETURN_REQUESTED => 'Return Requested',
            self::STATUS_RETURN_ACCEPTED => 'Return Accepted',
            self::STATUS_RETURNED => 'Returned',
        ];

        return $statuses[$this->status] ?? 'Unknown';
    }

    public function getFormattedPhoneAttribute()
    {
        $phone = $this->phone;
        
        // Format phone number for display (e.g., +880 1XXX-XXXXXX)
        if (strlen($phone) >= 11) {
            if (substr($phone, 0, 3) === '880') {
                return '+880 ' . substr($phone, 3, 4) . '-' . substr($phone, 7);
            }
        }
        
        return $phone;
    }
}