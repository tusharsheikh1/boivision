<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Frontend\OrderEssential\OrderDisplayService;
use App\Http\Controllers\Frontend\OrderEssential\OrderCreationService;
use App\Http\Controllers\Frontend\OrderEssential\BuyNowService;
use App\Http\Controllers\Frontend\OrderEssential\PaymentService;
use App\Http\Controllers\Frontend\OrderEssential\OrderHelperService;
use App\Jobs\SendOrderConfirmationSms;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    protected $orderDisplayService;
    protected $orderCreationService;
    protected $buyNowService;
    protected $paymentService;
    protected $orderHelperService;

    public function __construct(
        OrderDisplayService $orderDisplayService,
        OrderCreationService $orderCreationService,
        BuyNowService $buyNowService,
        PaymentService $paymentService,
        OrderHelperService $orderHelperService
    ) {
        $this->orderDisplayService = $orderDisplayService;
        $this->orderCreationService = $orderCreationService;
        $this->buyNowService = $buyNowService;
        $this->paymentService = $paymentService;
        $this->orderHelperService = $orderHelperService;
    }

    /**
     * Customer order show
     */
    public function order()
    {
        return $this->orderDisplayService->order();
    }

    /**
     * Show returns page
     */
    public function returns()
    {
        return $this->orderDisplayService->returns();
    }

    /**
     * Store guest order (minimal)
     */
    public function orderStore_minimal(Request $request)
    {
        return $this->orderCreationService->orderStore_minimal($request);
    }

    /**
     * Store guest order
     */
    public function orderStore_guest(Request $request)
    {
        return $this->orderCreationService->orderStore_guest($request);
    }

    /**
     * Store customer order
     */
    public function orderStore(Request $request)
    {
        return $this->orderCreationService->orderStore($request);
    }

    /**
     * Store customer buy now order (minimal)
     */
    public function orderBuyNowStore_minimal(Request $request)
    {
        return $this->buyNowService->orderBuyNowStore_minimal($request);
    }

    /**
     * Store customer buy now order (guest)
     */
    public function orderBuyNowStore_guest(Request $request)
    {
        return $this->buyNowService->orderBuyNowStore_guest($request);
    }

    /**
     * Store customer buy now order
     */
    public function orderBuyNowStore(Request $request)
    {
        return $this->buyNowService->orderBuyNowStore($request);
    }

    /**
     * Buy product
     */
    public function buyProduct(Request $request)
    {
        return $this->buyNowService->buyProduct($request);
    }

    /**
     * Order invoice print
     */
    public function orderInvoice($id)
    {
        return $this->orderDisplayService->orderInvoice($id);
    }

    /**
     * Cancel order
     */
    public function cancel($id)
    {
        return $this->orderDisplayService->cancel($id);
    }

    /**
     * Return request by user
     */
    public function return_req($id)
    {
        return $this->orderDisplayService->return_req($id);
    }

    /**
     * Ordered product review
     */
    public function review($orderId)
    {
        return $this->orderDisplayService->review($orderId);
    }

    /**
     * Store product review
     */
    public function storeReview(Request $request, $id)
    {
        return $this->orderDisplayService->storeReview($request, $id);
    }

    /**
     * Show download view file
     */
    public function download()
    {
        return $this->orderDisplayService->download();
    }

    /**
     * Download product file
     */
    public function downloadProductFile($pro_id, $id)
    {
        return $this->orderDisplayService->downloadProductFile($pro_id, $id);
    }

    /**
     * Payment form
     */
    public function payform($slug)
    {
        return $this->paymentService->payform($slug);
    }

    /**
     * Create payment
     */
    public function payCreate(Request $request, $slug)
    {
        return $this->paymentService->payCreate($request, $slug);
    }

    /**
     * UddoktaPay processing
     */
    public function uddokpay($request, $amn, $id)
    {
        return $this->paymentService->uddokpay($request, $amn, $id);
    }

    /**
     * AamarPay processing
     */
    public function paynow($request, $amn, $id)
    {
        return $this->paymentService->paynow($request, $amn, $id);
    }

    /**
     * UddoktaPay webhook
     */
    public function webhook(Request $request)
    {
        return $this->paymentService->webhook($request);
    }

    /**
     * UddoktaPay success
     */
    public function success2(Request $request)
    {
        return $this->paymentService->success2($request);
    }

    /**
     * AamarPay success
     */
    public function success(Request $request)
    {
        return $this->paymentService->success($request);
    }

    /**
     * UddoktaPay cancel
     */
    public function cancel2()
    {
        return $this->paymentService->cancel2();
    }

    /**
     * AamarPay fail
     */
    public function fail(Request $request)
    {
        return $this->paymentService->fail($request);
    }
}