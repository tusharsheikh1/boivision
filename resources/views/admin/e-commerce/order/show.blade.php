@extends('layouts.admin.e-commerce.app')

@section('title', 'Order Information')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Order</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ routeHelper('dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item active">Order Information</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->

    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-sm-6">
                            <h3 class="card-title">Customer Information</h3>
                        </div>
                        <div class="col-sm-12 col-12 text-right"
                            style="display: flex;
                    flex-direction: row;
                    align-items: center;
                    justify-content: flex-end;
                    grid-column-gap: 8px;">
                            @if ($order->status != 5)
                                @if ($order->status != 2)
                                    @if ($order->status != 3)
                                        <a title="@if ($order->pay_staus == 1) Unpaid @else Paid @endif"
                                            href="{{ route('admin.order.pay', ['id' => $order->id]) }}"
                                            class="btn @if ($order->pay_staus == 1) btn-danger @else btn-success @endif btn-sm">
                                            <i class="fas fa-money-bill"></i>
                                            @if ($order->pay_staus == 1)
                                                Unpaid
                                            @else
                                                Paid
                                            @endif
                                        </a>
                                    @endif
                                @endif

                                @if (setting('STEEDFAST_STATUS') == 1 && $order->status != 9)
                                    <form action="{{ route('admin.setting.courier.sendsteedfast') }}" method="POST">
                                        @csrf
                                        <input type="hidden" name="invoice" value="{{ $order->invoice }}">
                                        <input type="hidden" name="recipient_name" value="{{ $order->first_name }}">
                                        <input type="hidden" name="recipient_phone" value="{{ $order->phone }}">
                                        <input type="hidden" name="recipient_address"
                                            value="{{ $order->address . ', ' . $order->town . ', ' . $order->district . ', ' . $order->post_code }}">
                                        @if ($order->pay_staus == 1)
                                            <input type="hidden" name="cod_amount" value="0.00">
                                        @else
                                            <input type="hidden" name="cod_amount" value="{{ $order->total }}">
                                        @endif
                                        <input type="hidden" name="note" value="N/A">
                                        <input class="btn btn-info btn-sm" type="submit" value="Send Courier">
                                    </form>
                                @else
                                    <i class="btn btn-info btn-sm">Courierd Already</i>
                                @endif

                                <!-- Custom SMS Button -->
                                @if(!empty($order->phone))
                                    <button type="button" class="btn btn-purple btn-sm" data-toggle="modal" data-target="#smsModal">
                                        <i class="fas fa-sms"></i>
                                        Send SMS
                                    </button>
                                @endif

                                <a title="Processing" href="{{ routeHelper('order/status/processing/' . $order->id) }}"
                                    onclick="alert('Are you sure change status this order?')"
                                    class="btn btn-primary btn-sm">
                                    <i class="fas fa-running"></i>
                                    Processing
                                </a>

                                @if ($order->status == 6)
                                    <a title="Accept return request]"
                                        href="{{ routeHelper('order/status/return_req_accept/' . $order->id) }}"
                                        onclick="alert('Return process are start')" class="btn btn-success btn-sm">
                                        Return Accept
                                    </a>
                                @elseif ($order->status == 7)
                                    <a title="Complete the return process, you got the product from customer as a return completely."
                                        href="{{ routeHelper('order/status/return_complete/' . $order->id) }}"
                                        onclick="alert('Complete the return, you got the product from customer?')"
                                        class="btn btn-success btn-sm">
                                        Return Complete
                                    </a>
                                @elseif ($order->status != 2 && $order->status != 3 && $order->status != 6 && $order->status != 7 && $order->status != 8)
                                    <a title="Shipping" href="{{ routeHelper('order/status/shipping/' . $order->id) }}"
                                        id="btnShipping" onclick="return confirm('Are you sure Shipping this order?')"
                                        class="btn btn-info btn-sm">
                                        <i class="fas fa-plane"></i> Shipping
                                    </a>

                                    <a title="Delivered" href="{{ routeHelper('order/status/delivered/' . $order->id) }}"
                                        onclick="alert('Are you sure change status this order?')"
                                        class="btn btn-success btn-sm">
                                        <i class="fas fa-thumbs-up"></i>
                                        Delivered
                                    </a>
                                @endif
                                @if ($order->status != 3 && $order->status != 2)
                                    <a title="Cancel" href="{{ routeHelper('order/status/cancel/' . $order->id) }}"
                                        onclick="alert('Are you sure change status this order?')"
                                        class="btn btn-warning btn-sm">
                                        <i class="fas fa-window-close"></i>
                                        Cancel
                                    </a>
                                @endif
                            @endif
                            @if ($order->status == 3)
                                <button type="button" class="btn btn-warning btn-sm" data-toggle="modal"
                                    data-target="#refund">
                                    Refund
                                </button>
                            @endif
                            @if ($order->status == 2)
                                <button type="button" class="btn btn-warning btn-sm" data-toggle="modal"
                                    data-target="#refund2">
                                    Refund
                                </button>
                            @endif
                            <a href="{{ route('admin.order.delete', ['did' => $order->id]) }}"
                                class="btn btn-danger btn-sm"><i class="nav-icon fas fa-trash-alt"></i> Delete</a>
                            <a href="{{ routeHelper('order/print/' . $order->id) }}" rel="noopener" target="_blank"
                                class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <tbody>
                            @if (!empty($order->meet_time))
                                <tr>
                                    <th>Meet Time</th>
                                    <td>{{ $order->meet_time }}</td>

                                </tr>
                            @endif
                            <tr>
                                <th>Customer Name</th>
                                <td>{{ $order->first_name }}</td>
                                <th>Order ID</th>
                                <td>{{ $order->order_id }}</td>
                            </tr>
                            <tr>
                                <th>Invoice</th>
                                <td>{{ $order->invoice }}</td>
                                <th>Company Name</th>
                                <td>{{ $order->company_name }}</td>
                            </tr>
                            <tr>
                                <th>Country</th>
                                <td>{{ $order->country }}</td>
                                <th>Address</th>
                                <td>{{ $order->address }}</td>
                            </tr>
                            <tr>
                                <th>Town</th>
                                <td>{{ $order->town }}</td>
                                <th>District</th>
                                <td>{{ $order->district }}</td>
                            </tr>
                            <tr>
                                <th>Post Code</th>
                                <td>{{ $order->post_code }}</td>
                                <th>Phone</th>
                                <td>{{ $order->phone }}</td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td>{{ $order->email }}</td>
                                <th>Shipping Method</th>
                                <td>{{ $order->shipping_method }}</td>
                            </tr>
                            <tr>
                                <th>Payment Method</th>
                                <td colspan="3">{{ $order->payment_method }}</td>
                            </tr>
                            @if ($order->payment_method == 'Bkash' || $order->payment_method == 'Nagad' || $order->payment_method == 'Rocket')
                                <tr>
                                    <th>Mobile Number</th>
                                    <td>{{ $order->mobile_number }}</td>
                                    <th>Transaction ID</th>
                                    <td>{{ $order->transaction_id }}</td>
                                </tr>
                            @elseif ($order->payment_method == 'Bank')
                                <tr>
                                    <th>Bank Name</th>
                                    <td>{{ $order->bank_name }}</td>
                                    <th>Account Number</th>
                                    <td>{{ $order->account_number }}</td>
                                </tr>
                                <tr>
                                    <th>Holder Name</th>
                                    <td>{{ $order->holder_name }}</td>
                                    <th>Branch Name</th>
                                    <td>{{ $order->branch_name }}</td>
                                </tr>
                                <tr>
                                    <th>Routing Number</th>
                                    <td colspan="3">{{ $order->routing_number }}</td>
                                </tr>
                            @endif
                            <tr>
                                <th>Coupon Code</th>
                                <td>{{ $order->coupon_code }}</td>
                                <th>Subtotal</th>
                                <td>{{ $order->subtotal }} <strong>{{ setting('CURRENCY_CODE_MIN') ?? 'TK' }}</strong>
                                </td>
                            </tr>
                            <tr>
                                <th>Shipping Charge</th>
                                <td>{{ $order->shipping_charge }}
                                    <strong>{{ setting('CURRENCY_CODE_MIN') ?? 'TK' }}</strong></td>
                                <th>Discount</th>
                                <td>{{ $order->discount }} <strong>{{ setting('CURRENCY_CODE_MIN') ?? 'TK' }}</strong>
                                </td>
                            </tr>
                            <tr>
                                <th>Payment Status</th>
                                <td>{{ $order->pay_staus == 1 ? 'Paid' : 'Unpaid' }} </td>
                                <th>Payment Date</th>
                                <td>{{ $order->pay_date }} </td>
                            </tr>
                            <tr>
                                <th>Partial Payment</th>
                                <td>
                                    @php
                                        $part = App\Models\PartialPayment::where('order_id', $order->id)
                                            ->where('status', 1)
                                            ->sum('amount');
                                        $ds = $order->total;
                                    @endphp
                                    {{ $part }}<strong>{{ setting('CURRENCY_CODE_MIN') ?? 'TK' }}</strong>
                                </td>
                                <th>Due</th>
                                <td> {{ $order->total - $part }} <strong>{{ setting('CURRENCY_CODE_MIN') ?? 'TK' }}</strong>
                                </td>
                            </tr>
                            <tr>
                                <th>Total</th>
                                <td>{{ $ds }} <strong>{{ setting('CURRENCY_CODE_MIN') ?? 'TK' }}</strong></td>
                                <th>Status</th>
                                <td>

                                    @if ($order->status == 0)
                                        <span class="badge badge-warning">Pending</span>
                                    @elseif ($order->status == 1)
                                        <span class="badge badge-primary">Processing</span>
                                    @elseif ($order->status == 2)
                                        <span class="badge badge-danger">Canceled</span>
                                    @elseif ($order->status == 5)
                                        <span class="badge badge-danger">Refund</span>
                                    @elseif ($order->status == 4)
                                        <span class="badge" style="background: #7db1b1;">Shipping</span>
                                    @elseif ($order->status == 6)
                                        <span class="badge" style="background: #7db1b1;">Return Request By User</span>
                                    @elseif ($order->status == 7)
                                        <span class="badge" style="background: #7db1b1;">Return process accept by
                                            Owner</span>
                                    @elseif ($order->status == 8)
                                        <span class="badge" style="background: #7db1b1;">Returned</span>
                                    @elseif ($order->status == 9)
                                        <span class="badge" style="background: #7db1b1;">Sended to Courier</span>
                                    @elseif ($order->status == 3)
                                        <span class="badge badge-success">Delivered</span>
                                    @endif
                                </td>
                            </tr>
                            @if ($order->status == 5)
                                <tr>
                                    <th>Refund Method</th>
                                    <td>{{ $order->refund_method }}</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- SMS Modal -->
            <div class="modal fade" id="smsModal" tabindex="-1" role="dialog"
                aria-labelledby="smsModalTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="smsModalTitle">
                                <i class="fas fa-sms text-purple"></i>
                                Send Custom SMS to {{ $order->first_name }}
                            </h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form method="post" action="{{ route('admin.order.send.sms') }}">
                            @csrf
                            <div class="modal-body">
                                <input type="hidden" name="order_id" value="{{ $order->id }}">
                                
                                <div class="form-group">
                                    <label for="customer_info"><i class="fas fa-info-circle text-info"></i> Customer Info:</label>
                                    <div class="alert alert-info">
                                        <strong>Name:</strong> {{ $order->first_name }}<br>
                                        <strong>Phone:</strong> {{ $order->phone }}<br>
                                        <strong>Invoice:</strong> {{ $order->invoice }}
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="sms_templates"><i class="fas fa-list text-success"></i> Quick Templates:</label>
                                    <select class="form-control" id="sms_templates" onchange="loadTemplate()">
                                        <option value="">Select a template...</option>
                                        <option value="Your order {invoice} is being prepared. We will notify you once it's ready for delivery. Thank you!">Order Preparation</option>
                                        <option value="Hi {customer_name}, your order {invoice} is out for delivery and will reach you soon. Please keep your phone available.">Out for Delivery</option>
                                        <option value="Your order {invoice} has been delivered successfully. Thank you for shopping with us!">Delivery Confirmation</option>
                                        <option value="We apologize for the delay in your order {invoice}. We are working to process it as soon as possible.">Delay Notice</option>
                                        <option value="Your payment of {total} TK for order {invoice} has been confirmed. Thank you!">Payment Confirmation</option>
                                        <option value="Hi {customer_name}, please confirm your delivery address for order {invoice}. Contact us if you need to make changes.">Address Confirmation</option>
                                        <option value="Your order {invoice} is ready for pickup. Please visit our store with a valid ID. Thank you!">Pickup Ready</option>
                                        <option value="Thank you {customer_name} for your order {invoice}! Your order total is {total} TK. We appreciate your business.">Thank You Message</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="message"><i class="fas fa-edit text-primary"></i> SMS Message: <span class="text-danger">*</span></label>
                                    <textarea class="form-control" name="message" id="message" rows="4" 
                                              placeholder="Type your custom message here..." 
                                              maxlength="500" required 
                                              oninput="updateCharCount()"></textarea>
                                    <small class="form-text text-muted">
                                        <span id="charCount">0</span>/500 characters
                                        <br>
                                        <strong>Available variables:</strong> {invoice}, {customer_name}, {total}
                                    </small>
                                </div>

                                <div class="form-group">
                                    <div class="alert alert-warning">
                                        <i class="fas fa-exclamation-triangle"></i>
                                        <strong>Preview:</strong> SMS will be sent to <strong>{{ $order->phone }}</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                    <i class="fas fa-times"></i> Cancel
                                </button>
                                <button type="submit" class="btn btn-purple" id="sendSmsBtn">
                                    <i class="fas fa-paper-plane"></i> Send SMS
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="refund" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <div class="modal-body">
                            <form method="post" action="{{ route('admin.refund') }}">
                                @csrf
                                <div class="form-group">
                                    <input type="hidden" name="order" value="{{ $order->id }}">
                                    <input class="form-control" type="text" placeholder="amount" name="amount">
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="method">
                                        <option value="wallate">Wallate</option>
                                        <option value="Bank">Bank</option>
                                        <option value="Bkash">Bkash</option>
                                        <option value="Nagad">Nagad</option>
                                        <option value="Rocket">Rocket</option>
                                        <option value="Cash">Cash</option>
                                    </select>
                                </div>

                                <button type="submit" class="btn btn-primary">Refund</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="refund2" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <div class="modal-body">
                            <form method="post" action="{{ route('admin.refund_2') }}">
                                @csrf
                                <div class="form-group">
                                    <input type="hidden" name="order" value="{{ $order->id }}">
                                    <input class="form-control" type="text" placeholder="amount" name="amount">
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="method">
                                        <option value="wallate">Wallate</option>
                                        <option value="Bank">Bank</option>
                                        <option value="Bkash">Bkash</option>
                                        <option value="Nagad">Nagad</option>
                                        <option value="Rocket">Rocket</option>
                                        <option value="Cash">Cash</option>
                                    </select>
                                </div>

                                <button type="submit" class="btn btn-primary">Refund</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h2 class="card-title">Order Products</h2>
                </div>
                <div class="card-body">
                    @php
                        $vendors = DB::table('multi_order')
                            ->where('order_id', $order->id)
                            ->get();
                    @endphp
                    <style>
                        .gx {
                            display: flex;
                            background: #6dca6d24;
                            padding: 5px;
                            border-radius: 5px;
                            margin-bottom: 10px;
                        }

                        .gx div {
                            flex: 1;
                        }

                        .btn-purple {
                            background-color: #6f42c1;
                            border-color: #6f42c1;
                            color: white;
                        }

                        .btn-purple:hover {
                            background-color: #5a359e;
                            border-color: #5a359e;
                            color: white;
                        }

                        .text-purple {
                            color: #6f42c1 !important;
                        }
                    </style>
                    @foreach ($vendors as $key => $vendor)
                        @php($us = App\Models\User::find($vendor->vendor_id))
                        <div class="gx" style="">
                            <div>
                                Seller:{{ $us->name }}
                            </div>
                            <div>
                                Total:{{ $vendor->total }}
                            </div>
                            <div>
                                Payment:{{ $vendor->partial_pay }}
                            </div>
                            <div>
                                Discount:{{ $vendor->discount }}
                            </div>
                            <div>
                                Status:
                                @if ($vendor->status == 0)
                                    <span class="badge badge-warning">Pending</span>
                                @elseif ($vendor->status == 1)
                                    <span class="badge badge-primary">Processing</span>
                                @elseif ($vendor->status == 2)
                                    <span class="badge badge-danger">Canceled</span>
                                @elseif ($vendor->status == 4)
                                    <span class="badge" style="background: #7db1b1;">Shipping</span>
                                @elseif ($vendor->status == 5)
                                    <span class="badge badge-danger">Refund</span>
                                @elseif ($order->status == 6)
                                    <span class="badge" style="background: #7db1b1;">Return Request By User</span>
                                @elseif ($order->status == 7)
                                    <span class="badge" style="background: #7db1b1;">Return process accept by
                                        Owner</span>
                                @elseif ($order->status == 8)
                                    <span class="badge" style="background: #7db1b1;">Returned</span>
                                @elseif ($order->status == 3)
                                    <span class="badge badge-success">Delivered</span>
                                @endif
                            </div>

                        </div>
                        <div>
                            <a
                                href="{{ route('admin.order.subStatus', ['id' => $order->id, 'status' => 1, 'vendor' => $vendor->vendor_id]) }}">Processing</a>
                            <a
                                href="{{ route('admin.order.subStatus', ['id' => $order->id, 'status' => 4, 'vendor' => $vendor->vendor_id]) }}">Shipping</a>
                            <a
                                href="{{ route('admin.order.subStatus', ['id' => $order->id, 'status' => 2, 'vendor' => $vendor->vendor_id]) }}">Canceled</a>
                            <a
                                href="{{ route('admin.order.subStatus', ['id' => $order->id, 'status' => 3, 'vendor' => $vendor->vendor_id]) }}">Delivered</a>
                        </div>

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Product</th>
                                        <th>Title</th>
                                        <th>Size</th>
                                        <th>Color</th>
                                        <th>Qty</th>
                                        <th>Price</th>
                                        <th>Subtotal</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($order->orderDetails as $key => $item)
                                        @if (isset($item->product->user_id) && $item->product->user_id == $vendor->vendor_id)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>
                                                    <img src="{{ asset('uploads/product/' . $item->product->image) }}"
                                                        alt="Product Image" width="80px" height="80px">
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.product.show', $item->product->id) }}"
                                                        target="_blank">{{ $item->title }}</a>
                                                </td>
                                                <td><?php
                                                $data = json_decode($item->size);
                                                if ($data != null && $data != '""' && $data != '[]' && $data != '"\"\""') {
                                                    foreach ($data as $key => $attr) {
                                                        $value = DB::table('attribute_values')->where('id', $attr)->first();
                                                        $name = DB::table('attributes')->where('slug', $key)->first();
                                                        if ($name) {
                                                            echo $vl = $name->name . ':' . $value->name . ', ';
                                                        }
                                                    }
                                                }
                                                ?></td>
                                                <td> <?php
                                                if ($item->color != 'blank') {
                                                    echo $item->color;
                                                }
                                                ?></td>
                                                <td>{{ $item->qty }}</td>
                                                <td>{{ $item->price }}</td>
                                                <td>{{ $item->total_price }}</td>
                                            </tr>
                                        @endif
                                    @endforeach

                                </tbody>
                            </table>
                        </div>
                    @endforeach
                </div>

            </div>

        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

@endsection

@push('js')
<script>
function loadTemplate() {
    const template = document.getElementById('sms_templates').value;
    const messageField = document.getElementById('message');
    
    if (template) {
        messageField.value = template;
        updateCharCount();
    }
}

function updateCharCount() {
    const message = document.getElementById('message').value;
    const charCount = document.getElementById('charCount');
    const sendBtn = document.getElementById('sendSmsBtn');
    
    charCount.textContent = message.length;
    
    if (message.length > 500) {
        charCount.style.color = 'red';
        sendBtn.disabled = true;
    } else {
        charCount.style.color = 'green';
        sendBtn.disabled = false;
    }
}

// Initialize character count on page load
document.addEventListener('DOMContentLoaded', function() {
    updateCharCount();
});
</script>
@endpush