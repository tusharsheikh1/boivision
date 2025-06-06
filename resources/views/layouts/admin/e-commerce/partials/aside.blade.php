<style>
    /* Modern sidebar styling */
    .main-sidebar {
        background: #ffffff !important;
        border-right: 1px solid #e5e7eb !important;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06) !important;
    }

    .brand-link {
        background: #ffffff !important;
        border-bottom: 1px solid #f3f4f6 !important;
        padding: 1.5rem 1rem !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        transition: all 0.3s ease !important;
    }

    .brand-link:hover {
        background: #f9fafb !important;
    }

    .brand-image {
        max-height: 40px !important;
        width: auto !important;
        filter: drop-shadow(0 1px 2px rgba(0, 0, 0, 0.1)) !important;
    }

    .sidebar {
        padding: 1rem 0 !important;
    }

    .nav-sidebar .nav-item > .nav-link {
        margin: 0 1rem 0.5rem 1rem !important;
        padding: 0.875rem 1rem !important;
        font-size: 14px !important;
        font-weight: 500 !important;
        color: #374151 !important;
        border-radius: 0.75rem !important;
        transition: all 0.2s ease !important;
        border: none !important;
        position: relative !important;
        background: transparent !important;
    }

    .nav-sidebar .nav-item > .nav-link:hover {
        background: #f3f4f6 !important;
        color: #1f2937 !important;
        transform: translateX(2px) !important;
    }

    .nav-sidebar .nav-item > .nav-link.active,
    .nav-sidebar .nav-item.menu-open > .nav-link {
        background: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%) !important;
        color: #ffffff !important;
        box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3) !important;
    }

    .nav-sidebar .nav-item > .nav-link .nav-icon {
        margin-right: 0.75rem !important;
        width: 20px !important;
        text-align: center !important;
        font-size: 16px !important;
    }

    .nav-sidebar .nav-item > .nav-link .right {
        transition: transform 0.2s ease !important;
        color: #9ca3af !important;
    }

    .nav-sidebar .nav-item.menu-open > .nav-link .right {
        transform: rotate(90deg) !important;
        color: #ffffff !important;
    }

    .nav-treeview {
        background: #f8fafc !important;
        border-radius: 0.75rem !important;
        margin: 0.5rem 1rem !important;
        padding: 0.5rem 0 !important;
        border: 1px solid #e5e7eb !important;
        box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05) !important;
    }

    .nav-treeview .nav-item > .nav-link {
        margin: 0 0.75rem 0.25rem 0.75rem !important;
        padding: 0.625rem 1rem !important;
        font-size: 13px !important;
        color: #6b7280 !important;
        border-radius: 0.5rem !important;
        font-weight: 400 !important;
        background: transparent !important;
    }

    .nav-treeview .nav-item > .nav-link:hover {
        background: #ffffff !important;
        color: #374151 !important;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1) !important;
    }

    .nav-treeview .nav-item > .nav-link.active {
        background: #dbeafe !important;
        color: #1d4ed8 !important;
        font-weight: 500 !important;
    }

    .nav-treeview .nav-item > .nav-link .nav-icon {
        margin-right: 0.5rem !important;
        width: 16px !important;
        font-size: 14px !important;
        color: #9ca3af !important;
    }

    .nav-treeview .nav-item > .nav-link:hover .nav-icon,
    .nav-treeview .nav-item > .nav-link.active .nav-icon {
        color: inherit !important;
    }

    /* Nested treeview styling */
    .nav-treeview .nav-treeview {
        background: #f1f5f9 !important;
        border: 1px solid #cbd5e1 !important;
        margin-left: 1rem !important;
    }

    /* Special logout section styling */
    .logout-section {
        margin-top: 2rem !important;
        border-top: 1px solid #e5e7eb !important;
        padding-top: 1rem !important;
    }

    .logout-section .nav-link {
        color: #dc2626 !important;
    }

    .logout-section .nav-link:hover {
        background: #fef2f2 !important;
        color: #b91c1c !important;
    }

    /* Responsive improvements */
    @media (max-width: 768px) {
        .nav-sidebar .nav-item > .nav-link {
            margin: 0 0.5rem 0.5rem 0.5rem !important;
            padding: 0.75rem !important;
        }
        
        .nav-treeview {
            margin: 0.5rem 0.5rem !important;
        }
    }

    /* Smooth animations */
    .nav-item {
        transition: all 0.2s ease !important;
    }

    /* Custom scrollbar for sidebar */
    .sidebar::-webkit-scrollbar {
        width: 6px;
    }

    .sidebar::-webkit-scrollbar-track {
        background: #f1f5f9;
    }

    .sidebar::-webkit-scrollbar-thumb {
        background: #cbd5e1;
        border-radius: 3px;
    }

    .sidebar::-webkit-scrollbar-thumb:hover {
        background: #94a3b8;
    }
</style>

<aside class="main-sidebar sidebar-light-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route('admin.dashboard')}}" class="brand-link">
        <img src="/uploads/setting/{{setting('logo')}}" alt="Logo" class="brand-image">
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item {{Request::is('admin') ? 'menu-is-opening menu-open':''}}">
                    <a href="{{routeHelper('dashboard')}}" class="nav-link {{Request::is('admin') ? 'active':''}}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                @if(auth()->user()->desig ==1)
                <li class="nav-item {{Request::is('admin/staff*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-user-nurse"></i>
                        <p>
                            Staff
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.staff.create')}}"
                                class="nav-link {{Request::is('admin/staff/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.staff.list')}}"
                                class="nav-link {{Request::is('admin/staff/list') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item {{Request::is('admin/author*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-user-edit"></i>
                        <p>
                            Author
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.author.create')}}"
                                class="nav-link {{Request::is('admin/author/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.author.index')}}"
                                class="nav-link {{Request::is('admin/author*') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2)
                <li class="nav-item">
                    <a href="{{ route('admin.notice_index') }}" class="nav-link {{Request::is('admin/notice*') ? 'active':''}}">
                        <i class="nav-icon fas fa-bell"></i>
                        <p>Custom Elements - Notice</p>
                    </a>
                </li>

                <li class="nav-item {{Request::is('admin/category*') || Request::is('admin/sub-category*') || Request::is('admin/mini-categories*') || Request::is('admin/extra-categories*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-sitemap"></i>
                        <p>
                            Categories
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item {{Request::is('admin/category*') ? 'menu-is-opening menu-open':''}}">
                            <a href="javascript:void(0)" class="nav-link">
                                <i class="nav-icon fas fa-layer-group"></i>
                                <p>
                                    Mega Categories
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{routeHelper('category/create')}}"
                                        class="nav-link {{Request::is('admin/category/create') ? 'active':''}}">
                                        <i class="fas fa-plus-circle nav-icon"></i>
                                        <p>Add</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{routeHelper('category')}}"
                                        class="nav-link {{Request::is('admin/category') ? 'active':''}}">
                                        <i class="fas fa-bars nav-icon"></i>
                                        <p>List</p>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item {{Request::is('admin/sub-category*') ? 'menu-is-opening menu-open':''}}">
                            <a href="javascript:void(0)" class="nav-link">
                                <i class="nav-icon fas fa-stream"></i>
                                <p>
                                    Sub Categories
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{routeHelper('sub-category/create')}}"
                                        class="nav-link {{Request::is('admin/sub-category/create') ? 'active':''}}">
                                        <i class="fas fa-plus-circle nav-icon"></i>
                                        <p>Add</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{routeHelper('sub-category')}}"
                                        class="nav-link {{Request::is('admin/sub-category') ? 'active':''}}">
                                        <i class="fas fa-bars nav-icon"></i>
                                        <p>List</p>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item {{Request::is('admin/mini-categories*') ? 'menu-is-opening menu-open':''}}">
                            <a href="javascript:void(0)" class="nav-link">
                                <i class="nav-icon fas fa-th-list"></i>
                                <p>
                                    Mini Categories
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{route('admin.minicategory')}}" class="nav-link">
                                        <i class="fas fa-plus-circle nav-icon"></i>
                                        <p>Add</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{route('admin.minicategory.list')}}" class="nav-link">
                                        <i class="fas fa-bars nav-icon"></i>
                                        <p>List</p>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item {{Request::is('admin/extra-categories*') ? 'menu-is-opening menu-open':''}}">
                            <a href="javascript:void(0)" class="nav-link">
                                <i class="nav-icon fas fa-plus-square"></i>
                                <p>
                                    Extra Categories
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{route('admin.extracategory')}}" class="nav-link">
                                        <i class="fas fa-plus-circle nav-icon"></i>
                                        <p>Add</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{route('admin.extracategory.list')}}" class="nav-link">
                                        <i class="fas fa-bars nav-icon"></i>
                                        <p>List</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="nav-item {{Request::is('admin/collection*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-shapes"></i>
                        <p>
                            Collection
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('collection/create')}}"
                                class="nav-link {{Request::is('admin/collection/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('collection')}}"
                                class="nav-link {{Request::is('admin/collection') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1)
                <li class="nav-item {{Request::is('admin/slider*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-images"></i>
                        <p>
                            Sliders
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('slider/create')}}"
                                class="nav-link {{Request::is('admin/slider/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('slider')}}"
                                class="nav-link {{Request::is('admin/slider') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item {{Request::is('admin/attribute*') || Request::is('admin/color*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-sliders-h"></i>
                        <p>
                            Attributes
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.attribute.form')}}"
                                class="nav-link {{Request::is('admin/attribute/form') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.attribute.index')}}"
                                class="nav-link {{Request::is('admin/attribute/list') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                        <li class="nav-item {{Request::is('admin/color*') ? 'menu-is-opening menu-open':''}}">
                            <a href="javascript:void(0)" class="nav-link">
                                <i class="nav-icon fas fa-palette"></i>
                                <p>
                                    Colors
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{routeHelper('color')}}"
                                        class="nav-link {{Request::is('admin/color/create') ? 'active':''}}">
                                        <i class="fas fa-plus-circle nav-icon"></i>
                                        <p>Add</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{routeHelper('color')}}"
                                        class="nav-link {{Request::is('admin/color') ? 'active':''}}">
                                        <i class="fas fa-bars nav-icon"></i>
                                        <p>List</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="nav-item {{Request::is('admin/coupon*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-tags"></i>
                        <p>
                            Coupon
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('coupon/create')}}"
                                class="nav-link {{Request::is('admin/coupon/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('coupon')}}"
                                class="nav-link {{Request::is('admin/coupon') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2)
                <li class="nav-item {{Request::is('admin/brand*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-stamp"></i>
                        <p>
                            Brands
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('brand/create')}}"
                                class="nav-link {{Request::is('admin/brand/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('brand')}}"
                                class="nav-link {{Request::is('admin/brand') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1)
                <li class="nav-item {{Request::is('admin/tag*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-hashtag"></i>
                        <p>
                            Tags
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('tag/create')}}"
                                class="nav-link {{Request::is('admin/tag/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('tag')}}"
                                class="nav-link {{Request::is('admin/tag') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item {{Request::is('admin/campaing*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-bullhorn"></i>
                        <p>
                            Campaign
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.campaing.create')}}"
                                class="nav-link {{Request::is('admin/campaing/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.campaing.index')}}"
                                class="nav-link {{Request::is('admin/campaing/list') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2)
                <li class="nav-item {{Request::is('admin/classic*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-gem"></i>
                        <p>
                            Classic Product
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.classic.form')}}"
                                class="nav-link {{Request::is('admin/classic/form') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.classic.index')}}"
                                class="nav-link {{Request::is('admin/classic/list') ? 'active':''}}">
                                <i class="fas fa-bars nav-icon"></i>
                                <p>List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2 ||auth()->user()->desig ==3)
                <li class="nav-item {{Request::is('admin/product*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-box"></i>
                        <p>
                            Products
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.product.type')}}"
                                class="nav-link {{Request::is('admin/product/type') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('product')}}"
                                class="nav-link {{Request::is('admin/product') ? 'active':''}}">
                                <i class="fas fa-boxes nav-icon"></i>
                                <p>All Product</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.product.active')}}"
                                class="nav-link {{Request::is('admin/product/active') ? 'active':''}}">
                                <i class="fas fa-check-circle nav-icon"></i>
                                <p>Active & Approved</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.product.disable')}}"
                                class="nav-link {{Request::is('admin/product/disable') ? 'active':''}}">
                                <i class="fas fa-times-circle nav-icon"></i>
                                <p>Disabled</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.product.unaproved')}}"
                                class="nav-link {{Request::is('admin/product/unaproved') ? 'active':''}}">
                                <i class="fas fa-clock nav-icon"></i>
                                <p>Unapproved</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.product.reached')}}"
                                class="nav-link {{Request::is('admin/product/reached') ? 'active':''}}">
                                <i class="fas fa-star nav-icon"></i>
                                <p>Top Product</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.product.imex')}}"
                                class="nav-link {{Request::is('admin/product/bulk') ? 'active':''}}">
                                <i class="fas fa-file-import nav-icon"></i>
                                <p>Import/Export</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2|| auth()->user()->desig ==4)
                <li class="nav-item {{Request::is('admin/order*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-shopping-cart"></i>
                        <p>
                            Orders
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('order')}}"
                                class="nav-link {{Request::is('admin/order') ? 'active':''}}">
                                <i class="fas fa-list nav-icon"></i>
                                <p>All Orders</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('order/pending')}}"
                                class="nav-link {{Request::is('admin/order/pending') ? 'active':''}}">
                                <i class="fas fa-clock nav-icon"></i>
                                <p>New Orders</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('order/pre')}}"
                                class="nav-link {{Request::is('admin/order/pre') ? 'active':''}}">
                                <i class="fas fa-calendar-plus nav-icon"></i>
                                <p>Pre Orders</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('order/processing')}}"
                                class="nav-link {{Request::is('admin/order/processing') ? 'active':''}}">
                                <i class="fas fa-cog nav-icon"></i>
                                <p>Processing</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('order/cancel')}}"
                                class="nav-link {{Request::is('admin/order/cancel') ? 'active':''}}">
                                <i class="fas fa-ban nav-icon"></i>
                                <p>Cancelled</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('order/delivered')}}"
                                class="nav-link {{Request::is('admin/order/delivered') ? 'active':''}}">
                                <i class="fas fa-check nav-icon"></i>
                                <p>Delivered</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('order/partials')}}"
                                class="nav-link {{Request::is('admin/order/partials') ? 'active':''}}">
                                <i class="fas fa-shipping-fast nav-icon"></i>
                                <p>Partial Delivery</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2)
                <li class="nav-item {{Request::is('admin/customer*') || Request::is('admin/subscribe*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            Customers
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('customer/create')}}"
                                class="nav-link {{Request::is('admin/customer/create') ? 'active':''}}">
                                <i class="fas fa-user-plus nav-icon"></i>
                                <p>Add Customer</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('customer')}}"
                                class="nav-link {{Request::is('admin/customer') ? 'active':''}}">
                                <i class="fas fa-users nav-icon"></i>
                                <p>Customer List</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('subscribe')}}" 
                                class="nav-link {{Request::is('admin/subscribe') ? 'active':''}}">
                                <i class="fas fa-envelope nav-icon"></i>
                                <p>Subscribers</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                <li class="nav-item {{Request::is('admin/vendor*') ? 'menu-is-opening menu-open':''}}">
                    <a href="javascript:void(0)" class="nav-link">
                        <i class="nav-icon fas fa-store"></i>
                        <p>
                            Vendors
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('vendor/create')}}"
                                class="nav-link {{Request::is('admin/vendor/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Add Vendor</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('vendor')}}"
                                class="nav-link {{Request::is('admin/vendor') ? 'active':''}}">
                                <i class="fas fa-list nav-icon"></i>
                                <p>Vendor List</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.vendor.withdraw')}}"
                                class="nav-link {{Request::is('admin/vendor/withdraw') ? 'active':''}}">
                                <i class="fas fa-money-bill-wave nav-icon"></i>
                                <p>Withdraw Requests</p>
                            </a>
                        </li>
                    </ul>
                </li>

                @if(auth()->user()->desig ==1)
                <li class="nav-item {{Request::is('admin/connection*') || Request::is('admin/mail*') || Request::is('admin/ticket*') ? 'menu-is-opening menu-open':''}}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-comments"></i>
                        <p>
                            Communication
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.connection.live.chat')}}"
                                class="nav-link {{Request::is('admin/connection/live-chat') ? 'active':''}}">
                                <i class="fas fa-comment-dots nav-icon"></i>
                                <p>Live Chat</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('mail')}}" 
                                class="nav-link {{Request::is('admin/mail') ? 'active':''}}">
                                <i class="fas fa-envelope nav-icon"></i>
                                <p>Mail</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{routeHelper('ticket')}}" 
                                class="nav-link {{Request::is('admin/ticket') ? 'active':''}}">
                                <i class="fas fa-ticket-alt nav-icon"></i>
                                <p>Support Tickets</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1 || auth()->user()->desig ==2)
                <li class="nav-item {{Request::is('admin/blog*') ? 'menu-is-opening menu-open':''}}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-blog"></i>
                        <p>
                            Blog Management
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.index')}}"
                                class="nav-link {{Request::is('admin/blog/own') ? 'active':''}}">
                                <i class="fas fa-edit nav-icon"></i>
                                <p>My Blogs</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.user_blog')}}"
                                class="nav-link {{Request::is('admin/blog/user') ? 'active':''}}">
                                <i class="fas fa-users nav-icon"></i>
                                <p>User Blogs</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.new_blog')}}"
                                class="nav-link {{Request::is('admin/blog/new') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Create New Blog</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                @if(auth()->user()->desig ==1)
                <li class="nav-item {{Request::is('admin/setting*') ? 'menu-is-opening menu-open':''}}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cogs"></i>
                        <p>
                            Settings
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{routeHelper('setting')}}" 
                                class="nav-link {{Request::is('admin/setting') ? 'active':''}}">
                                <i class="fas fa-cog nav-icon"></i>
                                <p>Basic Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.site_info')}}" 
                                class="nav-link {{Request::is('admin/setting/site_info') ? 'active':''}}">
                                <i class="fas fa-info-circle nav-icon"></i>
                                <p>Site Information</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.shop_settings')}}" 
                                class="nav-link {{Request::is('admin/setting/shop_settings') ? 'active':''}}">
                                <i class="fas fa-store nav-icon"></i>
                                <p>Shop Configuration</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.mailsmsapireglog')}}" 
                                class="nav-link {{Request::is('admin/setting/mail*') ? 'active':''}}">
                                <i class="fas fa-envelope-open nav-icon"></i>
                                <p>Mail & SMS Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.layout')}}" 
                                class="nav-link {{Request::is('admin/setting/layout') ? 'active':''}}">
                                <i class="fas fa-th-large nav-icon"></i>
                                <p>Layout Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.getway')}}" 
                                class="nav-link {{Request::is('admin/setting/getway') ? 'active':''}}">
                                <i class="fas fa-credit-card nav-icon"></i>
                                <p>Payment Gateway</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.home')}}" 
                                class="nav-link {{Request::is('admin/setting/home') ? 'active':''}}">
                                <i class="fas fa-home nav-icon"></i>
                                <p>Homepage Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.header')}}" 
                                class="nav-link {{Request::is('admin/setting/header') ? 'active':''}}">
                                <i class="fas fa-window-maximize nav-icon"></i>
                                <p>Header & Footer</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.seo')}}" 
                                class="nav-link {{Request::is('admin/setting/seo') ? 'active':''}}">
                                <i class="fas fa-search nav-icon"></i>
                                <p>SEO Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.docs')}}" 
                                class="nav-link {{Request::is('admin/setting/docs') ? 'active':''}}">
                                <i class="fas fa-file-alt nav-icon"></i>
                                <p>Documents</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.color')}}" 
                                class="nav-link {{Request::is('admin/setting/color') ? 'active':''}}">
                                <i class="fas fa-palette nav-icon"></i>
                                <p>Color Scheme</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.setting.courier')}}" 
                                class="nav-link {{Request::is('admin/setting/courier') ? 'active':''}}">
                                <i class="fas fa-shipping-fast nav-icon"></i>
                                <p>Courier Settings</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="{{routeHelper('shop')}}" 
                        class="nav-link {{Request::is('admin/shop') ? 'active':''}}">
                        <i class="nav-icon fas fa-storefront"></i>
                        <p>Shop Frontend</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{route('admin.gallery')}}" 
                        class="nav-link {{Request::is('admin/gallery') ? 'active':''}}">
                        <i class="nav-icon fas fa-images"></i>
                        <p>Media Gallery</p>
                    </a>
                </li>

                <li class="nav-item {{Request::is('admin/page*') ? 'menu-is-opening menu-open':''}}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-file-alt"></i>
                        <p>
                            Page Management
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('admin.page.create')}}"
                                class="nav-link {{Request::is('admin/page/create') ? 'active':''}}">
                                <i class="fas fa-plus-circle nav-icon"></i>
                                <p>Create Page</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.pages')}}"
                                class="nav-link {{Request::is('admin/pages') ? 'active':''}}">
                                <i class="fas fa-list nav-icon"></i>
                                <p>All Pages</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif

                <!-- User Account Section -->
                <div class="logout-section">
                    <li class="nav-item">
                        <a href="{{routeHelper('profile/change-password')}}" 
                            class="nav-link {{Request::is('admin/profile/change-password') ? 'active':''}}">
                            <i class="fas fa-key nav-icon"></i>
                            <p>Change Password</p>
                        </a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="{{ route('logout') }}" class="nav-link" 
                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <i class="nav-icon fas fa-sign-out-alt"></i>
                            <p>Logout</p>
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </li>
                </div>
            </ul>
        </nav>
    </div>
</aside>