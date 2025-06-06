@extends('layouts.frontend.app')

@push('meta')
    <meta name='description' content="Buy now product" />
    <meta name='keywords' content="@foreach ($product->tags as $tag){{ $tag->name . ', ' }} @endforeach" />
@endpush

@section('title', 'Checkout - Buy now product')

@push('css')
<style>
    * {
        box-sizing: border-box;
    }

    .checkout-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    }

    .checkout-header {
        text-align: center;
        margin-bottom: 40px;
    }

    .checkout-header h1 {
        color: #1a1a1a;
        font-size: 1.8rem;
        font-weight: 600;
        margin-bottom: 10px;
    }

    .checkout-header p {
        color: #666;
        font-size: 0.8rem;
    }

    .checkout-grid {
        display: grid;
        grid-template-columns: 1fr 400px;
        gap: 40px;
        align-items: start;
    }

    @media (max-width: 768px) {
        .checkout-grid {
            grid-template-columns: 1fr;
            gap: 30px;
        }
    }

    .checkout-section {
        background: #fff;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        border: 1px solid #e5e7eb;
    }

    .section-header {
        display: flex;
        align-items: center;
        margin-bottom: 25px;
        padding-bottom: 15px;
        border-bottom: 2px solid #f3f4f6;
    }

    .section-number {
        background: #3b82f6;
        color: white;
        width: 32px;
        height: 32px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 600;
        margin-right: 15px;
        font-size: 14px;
    }

    .section-title {
        font-size: 1.25rem;
        font-weight: 600;
        color: #1a1a1a;
        margin: 0;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-label {
        display: block;
        font-weight: 500;
        color: #374151;
        margin-bottom: 8px;
        font-size: 14px;
    }

    .form-label .required {
        color: #ef4444;
        margin-left: 3px;
    }

    .form-input {
        width: 100%;
        padding: 12px 16px;
        border: 2px solid #e5e7eb;
        border-radius: 8px;
        font-size: 16px;
        transition: all 0.2s ease;
        background-color: #fff;
    }

    .form-input:focus {
        outline: none;
        border-color: #3b82f6;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    .form-input.error {
        border-color: #ef4444;
    }

    .form-select {
        width: 100%;
        padding: 12px 16px;
        border: 2px solid #e5e7eb;
        border-radius: 8px;
        font-size: 16px;
        background-color: #fff;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    .form-select:focus {
        outline: none;
        border-color: #3b82f6;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    .form-textarea {
        width: 100%;
        padding: 12px 16px;
        border: 2px solid #e5e7eb;
        border-radius: 8px;
        font-size: 16px;
        resize: vertical;
        min-height: 80px;
        font-family: inherit;
        transition: all 0.2s ease;
    }

    .form-textarea:focus {
        outline: none;
        border-color: #3b82f6;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    .error-message {
        color: #ef4444;
        font-size: 13px;
        margin-top: 5px;
        display: block;
    }

    .payment-methods {
        display: grid;
        gap: 12px;
        margin-top: 20px;
    }

    .payment-option {
        position: relative;
    }

    .payment-option input[type="radio"] {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }

    .payment-label {
        display: flex;
        align-items: center;
        padding: 16px;
        border: 2px solid #e5e7eb;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.2s ease;
        background: #fff;
    }

    .payment-label:hover {
        border-color: #3b82f6;
        background: #f8fafc;
    }

    .payment-option input[type="radio"]:checked + .payment-label {
        border-color: #3b82f6;
        background: #eff6ff;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    .payment-icon {
        width: 40px;
        height: 24px;
        object-fit: contain;
        margin-right: 12px;
    }

    .payment-text {
        font-weight: 500;
        color: #374151;
    }

    .shipping-options {
        display: grid;
        gap: 12px;
        margin-top: 15px;
    }

    .shipping-option {
        position: relative;
    }

    .shipping-option input[type="radio"] {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }

    .shipping-label {
        display: flex;
        align-items: center;
        padding: 16px;
        border: 2px solid #e5e7eb;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.2s ease;
        background: #fff;
    }

    .shipping-label:hover {
        border-color: #3b82f6;
        background: #f8fafc;
    }

    .shipping-option input[type="radio"]:checked + .shipping-label {
        border-color: #3b82f6;
        background: #eff6ff;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    .shipping-icon {
        font-size: 24px;
        margin-right: 15px;
        display: flex;
        align-items: center;
        justify-content: center;
        width: 40px;
        height: 40px;
        background: #f3f4f6;
        border-radius: 8px;
    }

    .shipping-info {
        flex: 1;
    }

    .shipping-title {
        font-weight: 600;
        color: #1f2937;
        font-size: 15px;
        margin-bottom: 4px;
    }

    .shipping-charge {
        font-weight: 500;
        color: #059669;
        font-size: 14px;
    }

    .see-more-toggle {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
        padding: 12px 16px;
        border: 2px dashed #d1d5db;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.2s ease;
        background: #fafafa;
        margin-top: 8px;
    }

    .see-more-toggle:hover {
        border-color: #3b82f6;
        background: #f8fafc;
    }

    .see-more-text {
        font-size: 14px;
        font-weight: 500;
        color: #6b7280;
    }

    .see-more-arrow {
        color: #6b7280;
        transition: transform 0.3s ease;
    }

    .see-more-toggle.expanded .see-more-arrow {
        transform: rotate(180deg);
    }

    .see-more-toggle.expanded .see-more-text::after {
        content: " লুকান";
    }

    .see-more-toggle.expanded .see-more-text {
        color: #3b82f6;
    }

    .additional-payments {
        display: grid;
        gap: 12px;
        margin-top: 12px;
        opacity: 0;
        max-height: 0;
        overflow: hidden;
        transition: all 0.3s ease;
    }

    .additional-payments.show {
        opacity: 1;
        max-height: 500px;
    }

    .payment-details {
        margin-top: 20px;
        padding: 20px;
        background: #f8fafc;
        border-radius: 8px;
        border-left: 4px solid #3b82f6;
    }

    .payment-details.hidden {
        display: none;
    }

    .order-summary {
        position: sticky;
        top: 20px;
    }

    .product-item {
        display: flex;
        align-items: center;
        padding: 16px 0;
        border-bottom: 1px solid #e5e7eb;
    }

    .product-image {
        width: 60px;
        height: 60px;
        object-fit: cover;
        border-radius: 8px;
        margin-right: 15px;
    }

    .product-info {
        flex: 1;
    }

    .product-title {
        font-weight: 500;
        color: #1a1a1a;
        margin: 0 0 4px 0;
        font-size: 14px;
        line-height: 1.4;
    }

    .product-price {
        font-weight: 600;
        color: #3b82f6;
        font-size: 16px;
    }

    .summary-row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 12px 0;
    }

    .summary-row.total {
        border-top: 2px solid #e5e7eb;
        padding-top: 20px;
        margin-top: 10px;
        font-weight: 600;
        font-size: 18px;
        color: #1a1a1a;
    }

    .coupon-section {
        margin: 20px 0;
        padding: 20px;
        background: #f8fafc;
        border-radius: 8px;
    }

    .coupon-toggle {
        display: flex;
        align-items: center;
        justify-content: space-between;
        cursor: pointer;
        margin-bottom: 15px;
    }

    .coupon-input-group {
        display: flex;
        gap: 10px;
    }

    .coupon-input {
        flex: 1;
    }

    .btn-apply {
        background: #3b82f6;
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 8px;
        font-weight: 500;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    .btn-apply:hover {
        background: #2563eb;
    }

    .submit-btn {
        width: 100%;
        background: linear-gradient(135deg, #6366f1 0%, #4f46e5 100%);
        color: white;
        border: none;
        padding: 0;
        border-radius: 12px;
        font-size: 14px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        margin-top: 20px;
        position: sticky;
        bottom: 20px;
        z-index: 100;
        box-shadow: 0 6px 20px rgba(99, 102, 241, 0.25);
        overflow: hidden;
        backdrop-filter: blur(10px);
    }

    .btn-content {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 14px 24px;
        width: 100%;
        position: relative;
    }

    .btn-content::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
        transition: left 0.5s;
    }

    .submit-btn:hover .btn-content::before {
        left: 100%;
    }

    .btn-action {
        display: flex;
        align-items: center;
        gap: 8px;
        font-size: 15px;
        font-weight: 600;
        letter-spacing: 0.3px;
    }

    .btn-icon {
        font-size: 16px;
        animation: bounce 2s infinite;
    }

    @keyframes bounce {
        0%, 20%, 50%, 80%, 100% {
            transform: translateY(0);
        }
        40% {
            transform: translateY(-2px);
        }
        60% {
            transform: translateY(-1px);
        }
    }

    .btn-arrow {
        transition: all 0.3s ease;
        opacity: 0.8;
        width: 16px;
        height: 16px;
    }

    .submit-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 12px 30px rgba(99, 102, 241, 0.35);
        background: linear-gradient(135deg, #7c3aed 0%, #6366f1 100%);
    }

    .submit-btn:hover .btn-arrow {
        transform: translateX(3px);
        opacity: 1;
    }

    .submit-btn:hover .btn-icon {
        animation-duration: 0.6s;
    }

    .submit-btn:active {
        transform: translateY(-1px);
        transition: all 0.1s ease;
    }

    .submit-btn:disabled {
        opacity: 0.8;
        cursor: not-allowed;
        transform: none;
        background: linear-gradient(135deg, #6b7280 0%, #4b5563 100%);
    }

    .submit-btn:disabled:hover {
        transform: none;
        box-shadow: 0 6px 20px rgba(107, 114, 128, 0.25);
    }

    /* Mobile sticky enhancement */
    @media (max-width: 768px) {
        .submit-btn {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            margin: 0;
            border-radius: 0;
            border-top-left-radius: 16px;
            border-top-right-radius: 16px;
            box-shadow: 0 -6px 20px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(20px);
        }
        
        .btn-content {
            padding: 16px 24px;
        }
        
        .btn-action {
            font-size: 16px;
            gap: 10px;
        }
        
        .btn-icon {
            font-size: 18px;
        }
        
        .btn-arrow {
            width: 18px;
            height: 18px;
        }
        
        .order-summary {
            padding-bottom: 80px;
        }
        
        .checkout-container {
            padding-bottom: 80px;
        }
        
        .submit-btn:hover {
            transform: none;
            box-shadow: 0 -6px 20px rgba(99, 102, 241, 0.3);
        }
    }

    /* Dark mode support */
    @media (prefers-color-scheme: dark) {
        .submit-btn {
            box-shadow: 0 6px 20px rgba(99, 102, 241, 0.3);
        }
        
        .submit-btn:hover {
            box-shadow: 0 12px 30px rgba(99, 102, 241, 0.4);
        }
    }

    .alert {
        padding: 16px;
        border-radius: 8px;
        margin-bottom: 20px;
        border-left: 4px solid;
    }

    .alert-success {
        background: #ecfdf5;
        border-color: #10b981;
        color: #065f46;
    }

    .alert-danger {
        background: #fef2f2;
        border-color: #ef4444;
        color: #991b1b;
    }

    .form-row {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 15px;
    }

    @media (max-width: 768px) {
        .form-row {
            grid-template-columns: 1fr;
        }
        
        .checkout-container {
            padding: 15px;
        }
        
        .checkout-section {
            padding: 20px;
        }
    }

    .loading {
        opacity: 0.7;
        pointer-events: none;
    }

    .spinner {
        display: inline-block;
        width: 20px;
        height: 20px;
        border: 3px solid #ffffff40;
        border-radius: 50%;
        border-top-color: #fff;
        animation: spin 1s ease-in-out infinite;
    }

    @keyframes spin {
        to { transform: rotate(360deg); }
    }
</style>
@endpush

@section('content')
    @php
        $order = App\Models\Order::where('user_id', auth()->id())
            ->select('address', 'shipping_charge', 'town', 'district', 'thana')
            ->first();
    @endphp

    <div class="checkout-container">
        <div class="checkout-header">
            <h1>অর্ডার সম্পন্ন করুন</h1>
            <p>মাত্র কয়েকটি ধাপে আপনার অর্ডার সম্পন্ন করুন</p>
        </div>

        <form action="{{ route('order.buy.store_minimal') }}" method="POST" id="checkout-form">
            @csrf
            
            <div class="checkout-grid">
                <!-- Left Column: Forms -->
                <div class="checkout-forms">
                    <!-- অ্যালার্ট মেসেজ -->
                    <div class="alert-container" style="display: none;">
                        <div class="alert" id="alert-message"></div>
                    </div>

                    <!-- বিলিং তথ্য -->
                    <div class="checkout-section">
                        <div class="section-header">
                            <div class="section-number">১</div>
                            <h3 class="section-title">বিলিং তথ্য</h3>
                        </div>

                        <div class="form-group">
                            <label class="form-label" for="first_name">
                                পূর্ণ নাম <span class="required">*</span>
                            </label>
                            <input 
                                type="text" 
                                id="first_name" 
                                name="first_name" 
                                class="form-input @error('first_name') error @enderror"
                                value="{{ auth()->user()->name ?? '' }}" 
                                required
                            />
                            @error('first_name')
                                <span class="error-message">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="form-label" for="phone">
                                ফোন নম্বর <span class="required">*</span>
                            </label>
                            <input 
                                type="tel" 
                                id="phone" 
                                name="phone" 
                                class="form-input @error('phone') error @enderror"
                                value="{{ auth()->user()->phone ?? '' }}" 
                                required
                            />
                            @error('phone')
                                <span class="error-message">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group" id="email_wrap" style="display: none;">
                            <label class="form-label" for="email">
                                ইমেইল ঠিকানা <span class="required">*</span>
                            </label>
                            <input 
                                type="email" 
                                id="email" 
                                name="email" 
                                class="form-input @error('email') error @enderror"
                            />
                            @error('email')
                                <span class="error-message">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label class="form-label" for="address">সম্পূর্ণ ঠিকানা</label>
                            <textarea 
                                id="address" 
                                name="address" 
                                class="form-textarea @error('address') error @enderror"
                                placeholder="আপনার সম্পূর্ণ ঠিকানা লিখুন..."
                            ></textarea>
                            @error('address')
                                <span class="error-message">{{ $message }}</span>
                            @enderror
                        </div>

                        @if ($product->sheba == 1)
                        <div class="form-group">
                            <label class="form-label" for="meet">সেবা গ্রহণের তারিখ</label>
                            <input 
                                type="date" 
                                id="meet" 
                                name="meet" 
                                class="form-input"
                            />
                        </div>
                        @endif

                        <div class="form-group">
                            <label class="form-label">শিপিং এলাকা</label>
                            <div class="shipping-options">
                                <div class="shipping-option">
                                    <input type="radio" name="shipping_range" value="1" id="dhaka_inside">
                                    <label for="dhaka_inside" class="shipping-label">
                                        <div class="shipping-icon">🏙️</div>
                                        <div class="shipping-info">
                                            <div class="shipping-title">ঢাকার সিটি</div>
                                            <div class="shipping-charge">{{ setting('shipping_charge') }} {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}</div>
                                        </div>
                                    </label>
                                </div>
                                
                                <div class="shipping-option">
                                    <input type="radio" name="shipping_range" value="0" id="dhaka_outside" checked>
                                    <label for="dhaka_outside" class="shipping-label">
                                        <div class="shipping-icon">🏘️</div>
                                        <div class="shipping-info">
                                            <div class="shipping-title">ঢাকা সিটির বাহিরে</div>
                                            <div class="shipping-charge">{{ setting('shipping_charge_out_of_range') }} {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}</div>
                                        </div>
                                    </label>
                                </div>
                            </div>
                        </div>

                        @if (!empty($request->pr))
                            <input type="hidden" name="pr" value="{{ $request->pr }}">
                        @endif
                        <input type="hidden" value="{{ $request->dynamic_price }}" name="dynamic_prices">
                    </div>

                    <!-- পেমেন্ট পদ্ধতি -->
                    <div class="checkout-section">
                        <div class="section-header">
                            <div class="section-number">২</div>
                            <h3 class="section-title">পেমেন্ট পদ্ধতি</h3>
                        </div>

                        <div class="payment-methods">
                            @if (setting('g_cod') == 'true')
                            <div class="payment-option">
                                <input type="radio" name="payment_method" value="Cash on Delivery" id="cod" checked>
                                <label for="cod" class="payment-label">
                                    <img src="{{ asset('/') }}icon/delivery-man.png" alt="COD" class="payment-icon">
                                    <span class="payment-text">ক্যাশ অন ডেলিভারি</span>
                                </label>
                            </div>
                            @endif

                            @if (setting('g_bkash') == 'true')
                            <div class="payment-option">
                                <input type="radio" name="payment_method" value="Bkash" id="Bkash">
                                <label for="Bkash" class="payment-label">
                                    <img src="{{ asset('/') }}icon/bkash.png" alt="bKash" class="payment-icon">
                                    <span class="payment-text">বিকাশ</span>
                                </label>
                            </div>
                            @endif

                            <!-- See More Toggle -->
                            <div class="see-more-toggle" onclick="toggleMorePayments()">
                                <span class="see-more-text">আরো পেমেন্ট অপশন দেখুন</span>
                                <svg class="see-more-arrow" width="16" height="16" viewBox="0 0 24 24" fill="none">
                                    <path d="M6 9l6 6 6-6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </div>

                            <!-- Additional Payment Methods (Hidden by default) -->
                            <div class="additional-payments" id="additional-payments" style="display: none;">
                                @if (setting('g_aamar') == 'true')
                                <div class="payment-option">
                                    <input type="radio" name="payment_method" value="aamarpay" id="aamarpay">
                                    <label for="aamarpay" class="payment-label">
                                        <img src="{{ asset('/') }}icon/aamarpay_logo.png" alt="Aamarpay" class="payment-icon">
                                        <span class="payment-text">আমারপে</span>
                                    </label>
                                </div>
                                @endif

                                @if (setting('g_uddok') == 'true')
                                <div class="payment-option">
                                    <input type="radio" name="payment_method" value="uddoktapay" id="uddoktapay">
                                    <label for="uddoktapay" class="payment-label">
                                        <img src="{{ asset('/') }}icon/uddoktapay.png" alt="Uddoktapay" class="payment-icon">
                                        <span class="payment-text">উদ্দোক্তাপে</span>
                                    </label>
                                </div>
                                @endif

                                @if (setting('g_nagad') == 'true')
                                <div class="payment-option">
                                    <input type="radio" name="payment_method" value="Nagad" id="Nagad">
                                    <label for="Nagad" class="payment-label">
                                        <img src="{{ asset('/') }}icon/nagad.png" alt="Nagad" class="payment-icon">
                                        <span class="payment-text">নগদ</span>
                                    </label>
                                </div>
                                @endif

                                @if (setting('g_rocket') == 'true')
                                <div class="payment-option">
                                    <input type="radio" name="payment_method" value="Rocket" id="Rocket">
                                    <label for="Rocket" class="payment-label">
                                        <img src="{{ asset('/') }}icon/rocket.png" alt="Rocket" class="payment-icon">
                                        <span class="payment-text">রকেট</span>
                                    </label>
                                </div>
                                @endif

                                @if (setting('g_bank') == 'true')
                                <div class="payment-option">
                                    <input type="radio" name="payment_method" value="Bank" id="Bank">
                                    <label for="Bank" class="payment-label">
                                        <img src="{{ asset('/') }}icon/bank.png" alt="Bank Transfer" class="payment-icon">
                                        <span class="payment-text">ব্যাংক ট্রান্সফার</span>
                                    </label>
                                </div>
                                @endif
                            </div>
                        </div>

                        @error('payment_method')
                            <span class="error-message">{{ $message }}</span>
                        @enderror

                        <div id="payment-instructions" class="payment-details">
                            <p>💵 পণ্য হাতে পেয়ে টাকা পরিশোধ করুন।</p>
                        </div>

                        <div id="payment-details"></div>
                    </div>
                </div>

                <!-- ডান কলাম: অর্ডার সামারি -->
                <div class="order-summary">
                    <div class="checkout-section">
                        <div class="section-header">
                            <div class="section-number">৩</div>
                            <h3 class="section-title">অর্ডার সামারি</h3>
                        </div>

                        <?php
                        if ($request->qty >= 6 && $product->whole_price > 0) {
                            $sub_total = $product->whole_price * $request->qty;
                        } else {
                            $sub_total = $request->dynamic_price * $request->qty;
                        }
                        ?>

                        <div class="product-item">
                            <img src="{{ asset('uploads/product/' . $product->image) }}" alt="{{ $product->title }}" class="product-image">
                            <div class="product-info">
                                <h4 class="product-title">{{ $product->title }}</h4>
                                <div class="product-price">{{ number_format($sub_total, 2) }} {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}</div>
                            </div>
                        </div>

                        <!-- Hidden inputs -->
                        <input type="hidden" name="id" value="{{ $request->id }}">
                        <input type="hidden" name="qty" value="{{ $request->qty }}">
                        <?php
                        $attr = [];
                        $attributes = DB::table('attributes')->get();
                        foreach ($attributes as $attribute) {
                            $attribute_prouct = DB::table('attribute_product')
                                ->select('*')
                                ->join('attribute_values', 'attribute_values.id', '=', 'attribute_product.attribute_value_id')
                                ->addselect('attribute_values.name as vName')
                                ->addselect('attribute_product.id as vid')
                                ->join('attributes', 'attributes.id', '=', 'attribute_values.attributes_id')
                                ->where('attribute_product.product_id', $product->id)
                                ->where('attributes.id', $attribute->id)
                                ->get();
                            if ($attribute_prouct->count() > 0) {
                                $slug = $attribute->slug;
                                $attr[$slug] = $request->$slug;
                            }
                        }
                        ?>
                        <input type="hidden" name="size" value="{{ $attr != '' ? json_encode($attr) : 'blank' }}">
                        <input type="hidden" name="color" value="{{ $request->color }}">

                        <!-- কুপন সেকশন -->
                        <div class="coupon-section">
                            <div class="coupon-toggle" onclick="toggleCoupon()">
                                <span class="form-label">কুপন আছে?</span>
                                <span id="coupon-arrow">+</span>
                            </div>
                            <div id="coupon-form" style="display: none;">
                                <div class="coupon-input-group">
                                    <input type="text" id="coupon" class="form-input coupon-input" placeholder="কুপন কোড লিখুন">
                                    <button type="button" class="btn-apply" onclick="applyCoupon()">প্রয়োগ করুন</button>
                                </div>
                            </div>
                        </div>

                        <div class="summary-row">
                            <span>উপমোট</span>
                            <span id="sub-total">{{ number_format($sub_total, 2) }} {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}</span>
                        </div>

                        <div class="summary-row">
                            <span>ডেলিভারি চার্জ</span>
                            <span id="ship-charge">
                                @if (isset($order->shipping_charge))
                                    {{ number_format($order->shipping_charge, 2) }}
                                @else
                                    0.00
                                @endif
                                {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}
                            </span>
                        </div>

                        <div class="summary-row" id="coupon-row" style="display: none;">
                            <span>কুপন <span id="coupon-name"></span></span>
                            <span style="color: #10b981;">-<span id="coupon-discount">0.00</span> {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}</span>
                        </div>

                        <div class="summary-row total">
                            <span>মোট</span>
                            <span id="total">
                                @if (Session::has('coupon'))
                                    @php
                                        $discount = Session::get('coupon')['discount'];
                                        $total = number_format($sub_total - $discount, 2);
                                    @endphp
                                    {{ $total }}
                                @else
                                    {{ number_format($sub_total, 2) }}
                                @endif
                                {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}
                            </span>
                        </div>

                        <button type="submit" class="submit-btn" id="submit-btn">
                            <div class="btn-content">
                                <div class="btn-action">
                                    <span class="btn-icon">🛒</span>
                                    <span id="btn-text">অর্ডার করুন</span>
                                    <span id="btn-spinner" class="spinner" style="display: none;"></span>
                                    <svg class="btn-arrow" width="16" height="16" viewBox="0 0 24 24" fill="none">
                                        <path d="M5 12h14m-7-7l7 7-7 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                </div>
                            </div>
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@push('js')
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Initialize
    updateShippingCharge();
    
    // Payment method change handler (using event delegation for dynamic content)
    document.addEventListener('change', function(e) {
        if (e.target.name === 'payment_method') {
            updatePaymentInstructions(e.target.value);
            toggleEmailField(e.target.value);
        }
    });
    
    // Shipping range change handler  
    document.querySelectorAll('input[name="shipping_range"]').forEach(function(radio) {
        radio.addEventListener('change', function() {
            updateShippingCharge();
        });
    });
    
    // Form submission handler
    document.getElementById('checkout-form').addEventListener('submit', function() {
        const submitBtn = document.getElementById('submit-btn');
        const btnText = document.getElementById('btn-text');
        const btnSpinner = document.getElementById('btn-spinner');
        const btnArrow = document.querySelector('.btn-arrow');
        const btnIcon = document.querySelector('.btn-icon');
        
        submitBtn.disabled = true;
        submitBtn.classList.add('loading');
        btnText.style.display = 'none';
        if (btnArrow) btnArrow.style.display = 'none';
        if (btnIcon) btnIcon.style.display = 'none';
        btnSpinner.style.display = 'inline-block';
    });
});

function updatePaymentInstructions(method) {
    const instructionsDiv = document.getElementById('payment-instructions');
    const detailsDiv = document.getElementById('payment-details');
    
    let instructions = '';
    let details = '';
    
    const bkash = "{{ setting('bkash') }}";
    const nagad = "{{ setting('nagad') }}";
    const rocket = "{{ setting('rocket') }}";
    const bank = "{!! setting('bank_name') !!}";
    const branch = "{!! setting('branch_name') !!}";
    const holder = "{!! setting('holder_name') !!}";
    const account = "{!! setting('bank_account') !!}";
    
    switch(method) {
        case 'Cash on Delivery':
            instructions = '💵 পণ্য হাতে পেয়ে টাকা পরিশোধ করুন।';
            break;
        case 'Bkash':
            instructions = `📱 <strong>${bkash}</strong> নম্বরে টাকা পাঠান এবং নিচে ট্রানজেকশনের বিবরণ দিন।`;
            details = getMobilePaymentForm();
            break;
        case 'Nagad':
            instructions = `📱 <strong>${nagad}</strong> নম্বরে টাকা পাঠান এবং নিচে ট্রানজেকশনের বিবরণ দিন।`;
            details = getMobilePaymentForm();
            break;
        case 'Rocket':
            instructions = `📱 <strong>${rocket}</strong> নম্বরে টাকা পাঠান এবং নিচে ট্রানজেকশনের বিবরণ দিন।`;
            details = getMobilePaymentForm();
            break;
        case 'Bank':
            instructions = `🏦 নিচের ব্যাংক অ্যাকাউন্টে টাকা পাঠান এবং ট্রানজেকশনের বিবরণ দিন।<br>
                           <strong>ব্যাংক:</strong> ${bank}<br>
                           <strong>শাখা:</strong> ${branch}<br>
                           <strong>অ্যাকাউন্ট হোল্ডার:</strong> ${holder}<br>
                           <strong>অ্যাকাউন্ট নম্বর:</strong> ${account}`;
            details = getBankTransferForm();
            break;
        case 'aamarpay':
        case 'uddoktapay':
            instructions = '🌐 নিরাপদে অনলাইন পেমেন্ট সম্পন্ন করতে আপনাকে রিডিরেক্ট করা হবে।';
            break;
        default:
            instructions = '💵 পণ্য হাতে পেয়ে টাকা পরিশোধ করুন।';
    }
    
    instructionsDiv.innerHTML = `<p>${instructions}</p>`;
    detailsDiv.innerHTML = details;
}

function getMobilePaymentForm() {
    return `
        <div class="form-group">
            <label class="form-label" for="mobile_number">আপনার মোবাইল নম্বর</label>
            <input type="text" name="mobile_number" id="mobile_number" class="form-input" placeholder="যেমন: ০১৭১২৩৪৫৬৭৮" required>
        </div>
        <div class="form-group">
            <label class="form-label" for="transaction_id">ট্রানজেকশন আইডি</label>
            <input type="text" name="transaction_id" id="transaction_id" class="form-input" placeholder="ট্রানজেকশন আইডি লিখুন" required>
        </div>
    `;
}

function getBankTransferForm() {
    return `
        <div class="form-group">
            <label class="form-label" for="bank_name">ব্যাংকের নাম</label>
            <input type="text" name="bank_name" id="bank_name" class="form-input" placeholder="ব্যাংকের নাম লিখুন" required>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label" for="account_number">অ্যাকাউন্ট নম্বর</label>
                <input type="text" name="account_number" id="account_number" class="form-input" placeholder="অ্যাকাউন্ট নম্বর" required>
            </div>
            <div class="form-group">
                <label class="form-label" for="routing">রাউটিং নম্বর</label>
                <input type="text" name="routing" id="routing" class="form-input" placeholder="রাউটিং নম্বর" required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label" for="holder_name">অ্যাকাউন্ট হোল্ডার</label>
                <input type="text" name="holder_name" id="holder_name" class="form-input" placeholder="অ্যাকাউন্ট হোল্ডারের নাম" required>
            </div>
            <div class="form-group">
                <label class="form-label" for="branch">শাখার নাম</label>
                <input type="text" name="branch" id="branch" class="form-input" placeholder="শাখার নাম" required>
            </div>
        </div>
    `;
}

function toggleEmailField(method) {
    const emailWrap = document.getElementById('email_wrap');
    const emailInput = document.getElementById('email');
    
    if (method === 'uddoktapay') {
        emailWrap.style.display = 'block';
        emailInput.required = true;
    } else {
        emailWrap.style.display = 'none';
        emailInput.required = false;
    }
}

function updateShippingCharge() {
    const shippingRange = document.querySelector('input[name="shipping_range"]:checked').value;
    const downloadAble = "{!! $product->download_able !!}";
    let shippingCharge = 0;
    
    if (downloadAble != 1) {
        if (shippingRange == 1) {
            shippingCharge = parseInt("{!! setting('shipping_charge') !!}");
        } else {
            shippingCharge = parseInt("{!! setting('shipping_charge_out_of_range') !!}");
        }
    }
    
    document.getElementById('ship-charge').textContent = 
        formatNumber(shippingCharge, 2) + ' {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}';
    
    updateTotal();
}

function toggleCoupon() {
    const couponForm = document.getElementById('coupon-form');
    const arrow = document.getElementById('coupon-arrow');
    
    if (couponForm.style.display === 'none') {
        couponForm.style.display = 'block';
        arrow.textContent = '−';
    } else {
        couponForm.style.display = 'none';
        arrow.textContent = '+';
    }
}

function applyCoupon() {
    const code = document.getElementById('coupon').value.trim();
    const id = "{!! $request->id !!}";
    const qty = "{!! $request->qty !!}";
    const dynamicPrice = "{!! $request->dynamic_price !!}";
    
    if (!code) {
        showAlert('দয়া করে একটি কুপন কোড লিখুন', 'danger');
        return;
    }
    
    // Show loading state
    const applyBtn = document.querySelector('.btn-apply');
    const originalText = applyBtn.textContent;
    applyBtn.disabled = true;
    applyBtn.innerHTML = '<span class="spinner"></span>';
    
    fetch(`/apply/coupon/buy-now/${code}/${id}/${qty}/${dynamicPrice}`)
        .then(response => response.json())
        .then(data => {
            if (data.alert === 'success') {
                showAlert(data.message, 'success');
                document.getElementById('coupon-discount').textContent = formatNumber(data.discount, 2);
                document.getElementById('coupon-name').textContent = `(${code})`;
                document.getElementById('coupon-row').style.display = 'flex';
                document.getElementById('coupon').value = '';
                updateTotal();
            } else {
                showAlert(data.message, 'danger');
            }
        })
        .catch(error => {
            showAlert('একটি ত্রুটি ঘটেছে। অনুগ্রহ করে আবার চেষ্টা করুন।', 'danger');
        })
        .finally(() => {
            applyBtn.disabled = false;
            applyBtn.textContent = originalText;
        });
}

function updateTotal() {
    const subtotal = parseFloat(document.getElementById('sub-total').textContent.replace(/[^0-9.-]+/g, ''));
    const shipping = parseFloat(document.getElementById('ship-charge').textContent.replace(/[^0-9.-]+/g, ''));
    const coupon = parseFloat(document.getElementById('coupon-discount').textContent.replace(/[^0-9.-]+/g, '')) || 0;
    
    const total = subtotal + shipping - coupon;
    const formattedTotal = `${formatNumber(total, 2)} {{ setting('CURRENCY_CODE_MIN') ?? 'টাকা' }}`;
    
    // Update only the summary total
    document.getElementById('total').innerHTML = formattedTotal;
}

function showAlert(message, type) {
    const alertContainer = document.querySelector('.alert-container');
    const alertMessage = document.getElementById('alert-message');
    
    alertMessage.className = `alert alert-${type}`;
    alertMessage.textContent = message;
    alertContainer.style.display = 'block';
    
    setTimeout(() => {
        alertContainer.style.display = 'none';
    }, 5000);
}

function formatNumber(number, decimals) {
    return new Intl.NumberFormat('en-US', {
        minimumFractionDigits: decimals,
        maximumFractionDigits: decimals
    }).format(number);
}

function toggleMorePayments() {
    const additionalPayments = document.getElementById('additional-payments');
    const toggle = document.querySelector('.see-more-toggle');
    const toggleText = document.querySelector('.see-more-text');
    
    if (additionalPayments.style.display === 'none') {
        additionalPayments.style.display = 'grid';
        setTimeout(() => {
            additionalPayments.classList.add('show');
        }, 10);
        toggle.classList.add('expanded');
        toggleText.textContent = 'কম অপশন দেখুন';
    } else {
        additionalPayments.classList.remove('show');
        toggle.classList.remove('expanded');
        toggleText.textContent = 'আরো পেমেন্ট অপশন দেখুন';
        setTimeout(() => {
            additionalPayments.style.display = 'none';
        }, 300);
    }
}
</script>
@endpush