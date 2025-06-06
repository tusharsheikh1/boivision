<style>
    /* Modern navbar styling */
    .main-header {
        background: #ffffff !important;
        border-bottom: 1px solid #e5e7eb !important;
        box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06) !important;
        padding: 0.75rem 1.5rem !important;
        min-height: 64px !important;
        position: sticky !important;
        top: 0 !important;
        z-index: 1000 !important;
        backdrop-filter: blur(10px) !important;
    }

    .navbar-nav .nav-item .nav-link {
        color: #374151 !important;
        font-weight: 500 !important;
        padding: 0.625rem 1rem !important;
        border-radius: 0.5rem !important;
        transition: all 0.2s ease !important;
        display: flex !important;
        align-items: center !important;
        font-size: 14px !important;
        position: relative !important;
    }

    .navbar-nav .nav-item .nav-link:hover {
        background-color: #f3f4f6 !important;
        color: #1f2937 !important;
        transform: translateY(-1px) !important;
    }

    .navbar-nav .nav-item .nav-link:active {
        transform: translateY(0) !important;
    }

    /* Hamburger menu button */
    .nav-link[data-widget="pushmenu"] {
        background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%) !important;
        border: 1px solid #d1d5db !important;
        width: 40px !important;
        height: 40px !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        border-radius: 0.5rem !important;
        margin-right: 0.5rem !important;
    }

    .nav-link[data-widget="pushmenu"]:hover {
        background: linear-gradient(135deg, #e5e7eb 0%, #d1d5db 100%) !important;
        transform: translateY(-1px) !important;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15) !important;
    }

    /* Visit Site button */
    .visit-site-btn {
        background: linear-gradient(135deg, #10b981 0%, #059669 100%) !important;
        color: #ffffff !important;
        border: none !important;
        padding: 0.625rem 1rem !important;
        font-weight: 600 !important;
        box-shadow: 0 2px 4px rgba(16, 185, 129, 0.2) !important;
    }

    .visit-site-btn:hover {
        background: linear-gradient(135deg, #059669 0%, #047857 100%) !important;
        color: #ffffff !important;
        box-shadow: 0 4px 12px rgba(16, 185, 129, 0.3) !important;
        transform: translateY(-1px) !important;
    }

    /* Right side buttons */
    .navbar-nav.ml-auto .nav-link {
        margin-left: 0.25rem !important;
        width: 40px !important;
        height: 40px !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        border-radius: 0.5rem !important;
        border: 1px solid #e5e7eb !important;
        background: #ffffff !important;
    }

    .navbar-nav.ml-auto .nav-link:hover {
        background: #f8fafc !important;
        border-color: #cbd5e1 !important;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1) !important;
    }

    /* User profile section */
    .user-profile {
        display: flex !important;
        align-items: center !important;
        background: #f8fafc !important;
        border: 1px solid #e2e8f0 !important;
        border-radius: 0.75rem !important;
        padding: 0.5rem 1rem !important;
        margin-left: 1rem !important;
        transition: all 0.2s ease !important;
    }

    .user-profile:hover {
        background: #f1f5f9 !important;
        border-color: #cbd5e1 !important;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1) !important;
    }

    .user-avatar {
        width: 32px !important;
        height: 32px !important;
        border-radius: 50% !important;
        background: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%) !important;
        color: #ffffff !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        font-weight: 600 !important;
        font-size: 14px !important;
        margin-right: 0.75rem !important;
    }

    .user-info {
        display: flex !important;
        flex-direction: column !important;
    }

    .user-name {
        font-weight: 600 !important;
        color: #1f2937 !important;
        font-size: 14px !important;
        line-height: 1.2 !important;
    }

    .user-role {
        font-size: 12px !important;
        color: #6b7280 !important;
        line-height: 1.2 !important;
    }

    /* Notification badge */
    .notification-badge {
        position: absolute !important;
        top: -2px !important;
        right: -2px !important;
        background: #ef4444 !important;
        color: #ffffff !important;
        border-radius: 50% !important;
        width: 18px !important;
        height: 18px !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        font-size: 10px !important;
        font-weight: 600 !important;
        border: 2px solid #ffffff !important;
    }

    /* Breadcrumb styling */
    .breadcrumb-section {
        background: #f9fafb !important;
        padding: 0.75rem 1.5rem !important;
        border-bottom: 1px solid #e5e7eb !important;
        display: flex !important;
        align-items: center !important;
        justify-content: space-between !important;
    }

    .breadcrumb {
        background: transparent !important;
        padding: 0 !important;
        margin: 0 !important;
        font-size: 14px !important;
    }

    .breadcrumb-item {
        color: #6b7280 !important;
    }

    .breadcrumb-item.active {
        color: #1f2937 !important;
        font-weight: 500 !important;
    }

    .breadcrumb-item + .breadcrumb-item::before {
        content: "/" !important;
        color: #9ca3af !important;
        margin: 0 0.5rem !important;
    }

    /* Quick stats in navbar */
    .quick-stats {
        display: flex !important;
        align-items: center !important;
        gap: 1rem !important;
        margin-right: 1rem !important;
    }

    .stat-item {
        display: flex !important;
        align-items: center !important;
        background: #f8fafc !important;
        border: 1px solid #e2e8f0 !important;
        border-radius: 0.5rem !important;
        padding: 0.5rem 0.75rem !important;
        font-size: 13px !important;
        color: #374151 !important;
    }

    .stat-item i {
        margin-right: 0.5rem !important;
        color: #6b7280 !important;
    }

    /* Responsive design */
    @media (max-width: 768px) {
        .main-header {
            padding: 0.5rem 1rem !important;
        }
        
        .quick-stats,
        .user-profile {
            display: none !important;
        }
        
        .navbar-nav.ml-auto .nav-link {
            width: 36px !important;
            height: 36px !important;
        }
    }

    /* Animation for dropdown */
    .dropdown-menu {
        border: 1px solid #e5e7eb !important;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1) !important;
        border-radius: 0.75rem !important;
        padding: 0.5rem !important;
    }

    .dropdown-item {
        border-radius: 0.5rem !important;
        padding: 0.5rem 0.75rem !important;
        font-size: 14px !important;
        color: #374151 !important;
        transition: all 0.2s ease !important;
    }

    .dropdown-item:hover {
        background: #f3f4f6 !important;
        color: #1f2937 !important;
    }
</style>

<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button">
                <i class="fas fa-bars"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link visit-site-btn" href="{{route('home')}}" target="_blank">
                <i class="fas fa-external-link-alt mr-2"></i>
                Visit Site
            </a>
        </li>
    </ul>



    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <!-- Notifications -->
        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="fas fa-bell"></i>
                <span class="notification-badge">3</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <div class="dropdown-header">
                    <strong>Notifications</strong>
                </div>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item">
                    <i class="fas fa-shopping-cart mr-2 text-primary"></i>
                    New order received
                    <span class="float-right text-muted text-sm">3 mins</span>
                </a>
                <a href="#" class="dropdown-item">
                    <i class="fas fa-user mr-2 text-success"></i>
                    New customer registered
                    <span class="float-right text-muted text-sm">5 mins</span>
                </a>
                <a href="#" class="dropdown-item">
                    <i class="fas fa-exclamation-triangle mr-2 text-warning"></i>
                    Low stock alert
                    <span class="float-right text-muted text-sm">10 mins</span>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
            </div>
        </li>

        <!-- Messages -->
        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="fas fa-comments"></i>
                <span class="notification-badge">2</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <div class="dropdown-header">
                    <strong>Messages</strong>
                </div>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item">
                    <div class="d-flex">
                        <div class="user-avatar" style="width: 24px; height: 24px; font-size: 10px; margin-right: 0.5rem;">
                            JD
                        </div>
                        <div class="flex-grow-1">
                            <div class="font-weight-bold">John Doe</div>
                            <div class="text-muted text-sm">Order inquiry...</div>
                        </div>
                        <div class="text-muted text-sm">2m</div>
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
            </div>
        </li>

        <!-- Quick Actions -->
        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="fas fa-plus"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <div class="dropdown-header">
                    <strong>Quick Actions</strong>
                </div>
                <div class="dropdown-divider"></div>
                <a href="{{route('admin.product.type')}}" class="dropdown-item">
                    <i class="fas fa-box mr-2"></i>
                    Add Product
                </a>
                @if(auth()->user()->desig == 1 || auth()->user()->desig == 2)
                <a href="{{routeHelper('category/create')}}" class="dropdown-item">
                    <i class="fas fa-sitemap mr-2"></i>
                    Add Category
                </a>
                <a href="{{routeHelper('customer/create')}}" class="dropdown-item">
                    <i class="fas fa-user-plus mr-2"></i>
                    Add Customer
                </a>
                @endif
                @if(auth()->user()->desig == 1)
                <a href="{{route('admin.staff.create')}}" class="dropdown-item">
                    <i class="fas fa-user-nurse mr-2"></i>
                    Add Staff
                </a>
                @endif
            </div>
        </li>

        <!-- Fullscreen -->
        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                <i class="fas fa-expand-arrows-alt"></i>
            </a>
        </li>
    </ul>

    <!-- User Profile Section -->
    <div class="user-profile d-none d-md-flex">
        <div class="user-avatar">
            {{ strtoupper(substr(auth()->user()->name ?? 'U', 0, 1)) }}{{ strtoupper(substr(auth()->user()->name ?? 'ser', 1, 1)) }}
        </div>
        <div class="user-info">
            <div class="user-name">{{ auth()->user()->name ?? 'User' }}</div>
            <div class="user-role">
                @if(auth()->user()->desig == 1)
                    Super Admin
                @elseif(auth()->user()->desig == 2)
                    Admin
                @elseif(auth()->user()->desig == 3)
                    Product Manager
                @elseif(auth()->user()->desig == 4)
                    Order Manager
                @else
                    User
                @endif
            </div>
        </div>
    </div>
</nav>

<!-- Optional breadcrumb section -->
<div class="breadcrumb-section d-none d-md-block">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{route('admin.dashboard')}}">
                    <i class="fas fa-home mr-1"></i>
                    Dashboard
                </a>
            </li>
            @php
                $segments = request()->segments();
                $url = '';
            @endphp
            @foreach($segments as $key => $segment)
                @if($key > 0) {{-- Skip 'admin' segment --}}
                    @php
                        $url .= '/' . $segment;
                        $isLast = $key === count($segments) - 1;
                    @endphp
                    <li class="breadcrumb-item {{ $isLast ? 'active' : '' }}">
                        @if(!$isLast)
                            <a href="{{ $url }}">{{ ucfirst(str_replace('-', ' ', $segment)) }}</a>
                        @else
                            {{ ucfirst(str_replace('-', ' ', $segment)) }}
                        @endif
                    </li>
                @endif
            @endforeach
        </ol>
    </nav>
    
    <div class="d-flex align-items-center">
        <div class="text-sm text-muted">
            <i class="fas fa-clock mr-1"></i>
            {{ now()->format('M d, Y - h:i A') }}
        </div>
    </div>
</div>