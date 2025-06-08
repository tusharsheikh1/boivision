<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="shortcut icon" type="image/jpg" href="/uploads/setting/{{setting('favicon')}}" />

    <title>@yield('title')</title>
    @include('layouts.global')

    <!-- Modern Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/assets/plugins/fontawesome-free/css/all.min.css">

    @notifyCss
    @stack('css')

    <!-- Theme style -->
    <link rel="stylesheet" href="/assets/dist/css/adminlte.min.css">
    
    <!-- Modern Theme Overrides -->
    <style>
        :root {
            /* Modern Color Palette */
            --primary: #3b82f6;
            --primary-dark: #1d4ed8;
            --primary-light: #dbeafe;
            --secondary: #6b7280;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --info: #06b6d4;
            
            /* Neutral Colors */
            --white: #ffffff;
            --gray-50: #f9fafb;
            --gray-100: #f3f4f6;
            --gray-200: #e5e7eb;
            --gray-300: #d1d5db;
            --gray-400: #9ca3af;
            --gray-500: #6b7280;
            --gray-600: #4b5563;
            --gray-700: #374151;
            --gray-800: #1f2937;
            --gray-900: #111827;
            
            /* Typography */
            --font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            
            /* Spacing */
            --spacing-xs: 0.25rem;
            --spacing-sm: 0.5rem;
            --spacing-md: 1rem;
            --spacing-lg: 1.5rem;
            --spacing-xl: 2rem;
            --spacing-2xl: 3rem;
            
            /* Border Radius */
            --radius-sm: 0.375rem;
            --radius-md: 0.5rem;
            --radius-lg: 0.75rem;
            --radius-xl: 1rem;
            
            /* Shadows */
            --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
            --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
            
            /* Transitions */
            --transition-fast: 0.15s ease;
            --transition-normal: 0.3s ease;
            --transition-slow: 0.5s ease;
        }

        /* Global Styles */
        * {
            box-sizing: border-box;
        }

        body {
            font-family: var(--font-family) !important;
            background-color: var(--gray-50) !important;
            color: var(--gray-700) !important;
            line-height: 1.6 !important;
            -webkit-font-smoothing: antialiased !important;
            -moz-osx-font-smoothing: grayscale !important;
        }

        /* Wrapper Improvements */
        .wrapper {
            min-height: 100vh !important;
            display: flex !important;
            flex-direction: column !important;
        }

        /* Content Wrapper */
        .content-wrapper {
            background-color: var(--gray-50) !important;
            margin-left: 250px !important;
            min-height: calc(100vh - 64px) !important;
            padding: var(--spacing-lg) !important;
            transition: margin-left var(--transition-normal) !important;
        }

        /* When sidebar is collapsed */
        .sidebar-collapse .content-wrapper {
            margin-left: 60px !important;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .content-wrapper {
                margin-left: 0 !important;
                padding: var(--spacing-md) !important;
            }
        }

        /* Content Header */
        .content-header {
            background: var(--white) !important;
            border-radius: var(--radius-lg) !important;
            box-shadow: var(--shadow-sm) !important;
            padding: var(--spacing-lg) !important;
            margin-bottom: var(--spacing-lg) !important;
            border: 1px solid var(--gray-200) !important;
        }

        .content-header h1 {
            font-size: 1.875rem !important;
            font-weight: 700 !important;
            color: var(--gray-900) !important;
            margin: 0 !important;
        }

        .breadcrumb {
            background: transparent !important;
            padding: 0 !important;
            margin: 0.5rem 0 0 0 !important;
            font-size: 0.875rem !important;
        }

        .breadcrumb-item {
            color: var(--gray-500) !important;
        }

        .breadcrumb-item.active {
            color: var(--gray-700) !important;
            font-weight: 500 !important;
        }

        .breadcrumb-item + .breadcrumb-item::before {
            content: "/" !important;
            color: var(--gray-400) !important;
        }

        /* Cards and Content Sections */
        .card {
            border: 1px solid var(--gray-200) !important;
            border-radius: var(--radius-lg) !important;
            box-shadow: var(--shadow-sm) !important;
            background: var(--white) !important;
            transition: all var(--transition-normal) !important;
        }

        .card:hover {
            box-shadow: var(--shadow-md) !important;
            transform: translateY(-1px) !important;
        }

        .card-header {
            background: var(--gray-50) !important;
            border-bottom: 1px solid var(--gray-200) !important;
            padding: var(--spacing-lg) !important;
            border-radius: var(--radius-lg) var(--radius-lg) 0 0 !important;
        }

        .card-title {
            font-size: 1.125rem !important;
            font-weight: 600 !important;
            color: var(--gray-900) !important;
            margin: 0 !important;
        }

        .card-body {
            padding: var(--spacing-lg) !important;
        }

        /* Buttons */
        .btn {
            font-weight: 500 !important;
            border-radius: var(--radius-md) !important;
            padding: 0.625rem 1rem !important;
            font-size: 0.875rem !important;
            transition: all var(--transition-fast) !important;
            border: 1px solid transparent !important;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%) !important;
            border-color: var(--primary) !important;
            color: var(--white) !important;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, var(--primary-dark) 0%, #1e40af 100%) !important;
            transform: translateY(-1px) !important;
            box-shadow: var(--shadow-md) !important;
        }

        .btn-success {
            background: var(--success) !important;
            border-color: var(--success) !important;
            color: var(--white) !important;
        }

        .btn-success:hover {
            background: #059669 !important;
            border-color: #059669 !important;
            transform: translateY(-1px) !important;
        }

        .btn-warning {
            background: var(--warning) !important;
            border-color: var(--warning) !important;
            color: var(--white) !important;
        }

        .btn-danger {
            background: var(--danger) !important;
            border-color: var(--danger) !important;
            color: var(--white) !important;
        }

        .btn-secondary {
            background: var(--gray-500) !important;
            border-color: var(--gray-500) !important;
            color: var(--white) !important;
        }

        /* Tables */
        .table {
            border-radius: var(--radius-lg) !important;
            overflow: hidden !important;
            background: var(--white) !important;
        }

        .table thead th {
            background: var(--gray-50) !important;
            border-bottom: 2px solid var(--gray-200) !important;
            font-weight: 600 !important;
            color: var(--gray-700) !important;
            padding: var(--spacing-md) !important;
        }

        .table tbody td {
            padding: var(--spacing-md) !important;
            border-bottom: 1px solid var(--gray-100) !important;
            color: var(--gray-600) !important;
        }

        .table tbody tr:hover {
            background: var(--gray-50) !important;
        }

        /* Forms */
        .form-control {
            border: 1px solid var(--gray-300) !important;
            border-radius: var(--radius-md) !important;
            padding: 0.625rem 0.75rem !important;
            font-size: 0.875rem !important;
            transition: all var(--transition-fast) !important;
            background: var(--white) !important;
        }

        .form-control:focus {
            border-color: var(--primary) !important;
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1) !important;
            outline: none !important;
        }

        .form-group label {
            font-weight: 500 !important;
            color: var(--gray-700) !important;
            margin-bottom: var(--spacing-sm) !important;
        }

        /* Alerts */
        .alert {
            border-radius: var(--radius-lg) !important;
            border: 1px solid !important;
            padding: var(--spacing-md) var(--spacing-lg) !important;
            margin-bottom: var(--spacing-lg) !important;
        }

        .alert-success {
            background: #ecfdf5 !important;
            border-color: #a7f3d0 !important;
            color: #065f46 !important;
        }

        .alert-danger {
            background: #fef2f2 !important;
            border-color: #fecaca !important;
            color: #991b1b !important;
        }

        .alert-warning {
            background: #fffbeb !important;
            border-color: #fed7aa !important;
            color: #92400e !important;
        }

        .alert-info {
            background: #f0f9ff !important;
            border-color: #bae6fd !important;
            color: #0c4a6e !important;
        }

        /* Notifications */
        div.fixed.inset-0.flex.items-end.justify-center {
            z-index: 999999 !important;
        }

        .notify {
            border-radius: var(--radius-lg) !important;
            box-shadow: var(--shadow-lg) !important;
            border: 1px solid var(--gray-200) !important;
            backdrop-filter: blur(10px) !important;
        }

        /* Footer */
        .admin-footer {
            background: var(--white) !important;
            border-top: 1px solid var(--gray-200) !important;
            padding: var(--spacing-md) 0 !important;
            margin-top: auto !important;
            text-align: center !important;
            font-size: 0.875rem !important;
            color: var(--gray-600) !important;
        }

        .admin-footer a {
            color: var(--primary) !important;
            text-decoration: none !important;
            font-weight: 500 !important;
            transition: color var(--transition-fast) !important;
        }

        .admin-footer a:hover {
            color: var(--primary-dark) !important;
            text-decoration: underline !important;
        }

        /* Loading States */
        .loading {
            opacity: 0.6 !important;
            pointer-events: none !important;
        }

        .loading::after {
            content: '' !important;
            position: absolute !important;
            top: 50% !important;
            left: 50% !important;
            width: 20px !important;
            height: 20px !important;
            margin: -10px 0 0 -10px !important;
            border: 2px solid var(--gray-300) !important;
            border-radius: 50% !important;
            border-top-color: var(--primary) !important;
            animation: spin 1s ease-in-out infinite !important;
        }

        @keyframes spin {
            to {
                transform: rotate(360deg) !important;
            }
        }

        /* Smooth scrolling */
        html {
            scroll-behavior: smooth !important;
        }

        /* Custom scrollbar */
        ::-webkit-scrollbar {
            width: 8px !important;
            height: 8px !important;
        }

        ::-webkit-scrollbar-track {
            background: var(--gray-100) !important;
        }

        ::-webkit-scrollbar-thumb {
            background: var(--gray-300) !important;
            border-radius: var(--radius-sm) !important;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: var(--gray-400) !important;
        }

        /* Responsive utilities */
        @media (max-width: 576px) {
            .content-wrapper {
                padding: var(--spacing-sm) !important;
            }
            
            .card-body {
                padding: var(--spacing-md) !important;
            }
            
            .btn {
                padding: 0.5rem 0.75rem !important;
                font-size: 0.8125rem !important;
            }
        }

        /* Focus styles for accessibility */
        .btn:focus,
        .form-control:focus,
        .nav-link:focus {
            outline: 2px solid var(--primary) !important;
            outline-offset: 2px !important;
        }

        /* Print styles */
        @media print {
            .main-sidebar,
            .main-header,
            .admin-footer {
                display: none !important;
            }
            
            .content-wrapper {
                margin-left: 0 !important;
                padding: 0 !important;
            }
        }

        /* Dark mode support (optional) */
        @media (prefers-color-scheme: dark) {
            /* Add dark mode styles if needed */
        }
    </style>
</head>

<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

        <!-- Navbar -->
        @include('layouts.admin.e-commerce.partials.navbar')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        @include('layouts.admin.e-commerce.partials.aside')
        <!-- /.main sidebar container -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>
        <!-- /.content-wrapper -->

        <!-- Footer -->
        <footer class="admin-footer">
            <div class="container-fluid">
                সকল কারিগরী সহযোগিতায় 
                <a href="https://web.facebook.com/tusharmktjnu/" target="_blank" title="Elitedesign.com.bd">
                    তুষার শেখ
                </a>
            </div>
        </footer>
        <!-- /.footer -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/assets/dist/js/adminlte.min.js"></script>

    <x:notify-messages />
    @notifyJs
    @stack('js')

    <!-- Enhanced JavaScript -->
    <script>
        $(document).ready(function() {
            // Auto-hide notifications
            setTimeout(function() {
                $('.notify').fadeOut('slow');
            }, 3000);
            
            // Confirmation dialog for delete actions
            $(document).on('click', '#deleteData', function(e) {
                let id = $(this).data('id');
                e.preventDefault();
                
                // Enhanced confirmation dialog
                if (confirm('Are you sure you want to delete this item? This action cannot be undone.')) {
                    // Add loading state
                    $(this).addClass('loading').prop('disabled', true);
                    document.getElementById('delete-data-form-' + id).submit();
                }
            });
            
            // Form submission loading states
            $('form').on('submit', function() {
                const submitBtn = $(this).find('button[type="submit"]');
                submitBtn.addClass('loading').prop('disabled', true);
                
                // Re-enable after 10 seconds as fallback
                setTimeout(function() {
                    submitBtn.removeClass('loading').prop('disabled', false);
                }, 10000);
            });
            
            // Enhanced table interactions
            $('.table tbody tr').on('click', function() {
                $(this).addClass('table-active').siblings().removeClass('table-active');
            });
            
            // Smooth scroll for anchor links
            $('a[href^="#"]').on('click', function(e) {
                e.preventDefault();
                const target = $(this.getAttribute('href'));
                if (target.length) {
                    $('html, body').animate({
                        scrollTop: target.offset().top - 100
                    }, 500);
                }
            });
            
            // Auto-resize textareas
            $('textarea').on('input', function() {
                this.style.height = 'auto';
                this.style.height = (this.scrollHeight) + 'px';
            });
            
            // Enhanced file input styling
            $('input[type="file"]').on('change', function() {
                const fileName = $(this).val().split('\\').pop();
                $(this).next('.custom-file-label').html(fileName || 'Choose file');
            });
            
            // Tooltips for buttons and icons
            $('[data-toggle="tooltip"]').tooltip();
            
            // Auto-save form data to localStorage (optional)
            $('form input, form textarea, form select').on('change', function() {
                const formId = $(this).closest('form').attr('id');
                if (formId) {
                    const formData = $(this).closest('form').serialize();
                    localStorage.setItem('form_' + formId, formData);
                }
            });
            
            // Keyboard shortcuts
            $(document).on('keydown', function(e) {
                // Ctrl+S to save form
                if (e.ctrlKey && e.key === 's') {
                    e.preventDefault();
                    $('form').first().submit();
                }
                
                // Escape to close modals
                if (e.key === 'Escape') {
                    $('.modal').modal('hide');
                }
            });
            
            // Performance: Lazy load images
            if ('IntersectionObserver' in window) {
                const imageObserver = new IntersectionObserver((entries, observer) => {
                    entries.forEach(entry => {
                        if (entry.isIntersecting) {
                            const img = entry.target;
                            img.src = img.dataset.src;
                            img.classList.remove('lazy');
                            imageObserver.unobserve(img);
                        }
                    });
                });
                
                document.querySelectorAll('img[data-src]').forEach(img => {
                    imageObserver.observe(img);
                });
            }
        });
        
        // Global error handler
        window.addEventListener('error', function(e) {
            console.error('Global error:', e.error);
            // You can add error reporting here
        });
        
        // Service worker registration (for PWA capabilities)
        if ('serviceWorker' in navigator) {
            window.addEventListener('load', function() {
                navigator.serviceWorker.register('/sw.js').then(function(registration) {
                    console.log('ServiceWorker registration successful');
                }).catch(function(err) {
                    console.log('ServiceWorker registration failed');
                });
            });
        }
    </script>
    <script src="/assets/dist/js/demo.js"></script>
</body>

</html>