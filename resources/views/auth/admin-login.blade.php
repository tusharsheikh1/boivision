@extends('layouts.frontend.app')

@section('title', 'Shopping Now')

@section('content')
<style>
    :root {
        --admin-primary: #dc2626;
        --admin-primary-dark: #b91c1c;
        --admin-primary-light: #ef4444;
        --admin-secondary: #fef2f2;
        --success: #10b981;
        --warning: #f59e0b;
        --error: #ef4444;
        --text-900: #0f172a;
        --text-700: #334155;
        --text-500: #64748b;
        --text-400: #94a3b8;
        --bg-white: #ffffff;
        --bg-gray-50: #f8fafc;
        --bg-gray-900: #0f172a;
        --border: #e2e8f0;
        --radius: 16px;
        --shadow-sm: 0 1px 2px 0 rgb(0 0 0 / 0.05);
        --shadow-md: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        --shadow-lg: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
        --shadow-xl: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
    }

    * {
        box-sizing: border-box;
    }

    body {
        font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #1e293b 0%, #334155 50%, #475569 100%);
        min-height: 100vh;
        position: relative;
        overflow-x: hidden;
    }

    /* Admin-themed animated background */
    body::before {
        content: '';
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: 
            radial-gradient(circle at 20% 50%, rgba(220, 38, 38, 0.1) 0%, transparent 50%),
            radial-gradient(circle at 80% 20%, rgba(239, 68, 68, 0.08) 0%, transparent 50%),
            radial-gradient(circle at 40% 80%, rgba(185, 28, 28, 0.1) 0%, transparent 50%);
        animation: adminFloat 15s ease-in-out infinite;
        z-index: -1;
    }

    @keyframes adminFloat {
        0%, 100% { opacity: 1; transform: translateY(0px); }
        50% { opacity: 0.8; transform: translateY(-20px); }
    }

    .admin-container {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 2rem 1rem;
        position: relative;
    }

    .admin-card {
        background: rgba(255, 255, 255, 0.98);
        backdrop-filter: blur(20px);
        border-radius: 24px;
        box-shadow: 
            var(--shadow-xl),
            0 0 0 1px rgba(220, 38, 38, 0.1),
            inset 0 1px 0 rgba(255, 255, 255, 0.1);
        border: 1px solid rgba(255, 255, 255, 0.2);
        width: 100%;
        max-width: 420px;
        overflow: hidden;
        position: relative;
        animation: slideInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1);
    }

    .admin-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 4px;
        background: linear-gradient(90deg, var(--admin-primary), var(--admin-primary-light), var(--admin-primary));
        border-radius: 24px 24px 0 0;
    }

    .admin-header {
        text-align: center;
        padding: 3rem 2.5rem 2rem;
        position: relative;
        background: linear-gradient(135deg, rgba(220, 38, 38, 0.05), rgba(239, 68, 68, 0.03));
    }

    .admin-logo {
        width: 72px;
        height: 72px;
        background: linear-gradient(135deg, var(--admin-primary), var(--admin-primary-light));
        border-radius: 20px;
        margin: 0 auto 1.5rem;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2.5rem;
        color: white;
        box-shadow: 
            var(--shadow-lg),
            0 0 20px rgba(220, 38, 38, 0.3);
        animation: adminPulse 3s infinite;
        position: relative;
    }

    .admin-logo::after {
        content: '';
        position: absolute;
        top: -4px;
        left: -4px;
        right: -4px;
        bottom: -4px;
        background: linear-gradient(135deg, var(--admin-primary), var(--admin-primary-light));
        border-radius: 24px;
        z-index: -1;
        opacity: 0.2;
        animation: adminGlow 2s ease-in-out infinite alternate;
    }

    .admin-title {
        font-size: 2rem;
        font-weight: 700;
        color: var(--text-900);
        margin: 0 0 0.5rem;
        background: linear-gradient(135deg, var(--admin-primary), var(--admin-primary-light));
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
    }

    .admin-subtitle {
        color: var(--text-500);
        font-size: 1rem;
        margin: 0;
        font-weight: 500;
    }

    .admin-badge {
        display: inline-flex;
        align-items: center;
        padding: 0.5rem 1rem;
        background: linear-gradient(135deg, var(--admin-primary), var(--admin-primary-dark));
        color: white;
        border-radius: 20px;
        font-size: 0.875rem;
        font-weight: 600;
        margin-top: 1rem;
        box-shadow: var(--shadow-md);
    }

    .admin-badge::before {
        content: '👑';
        margin-right: 0.5rem;
        font-size: 1rem;
    }

    .admin-form {
        padding: 0 2.5rem 3rem;
    }

    .form-group {
        margin-bottom: 1.5rem;
        position: relative;
    }

    .form-label {
        display: block;
        font-size: 0.875rem;
        font-weight: 600;
        color: var(--text-700);
        margin-bottom: 0.75rem;
        transition: color 0.2s ease;
    }

    .form-input-wrapper {
        position: relative;
    }

    .form-input {
        width: 100%;
        padding: 1rem 1.25rem 1rem 3rem;
        border: 2px solid var(--border);
        border-radius: var(--radius);
        font-size: 1rem;
        color: var(--text-900);
        background: var(--bg-white);
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        outline: none;
        font-family: inherit;
    }

    .form-input:focus {
        border-color: var(--admin-primary);
        box-shadow: 0 0 0 4px rgba(220, 38, 38, 0.1);
        transform: translateY(-1px);
    }

    .form-input:focus + .form-label {
        color: var(--admin-primary);
    }

    .form-input.error {
        border-color: var(--error);
        box-shadow: 0 0 0 4px rgba(239, 68, 68, 0.1);
        animation: shake 0.4s ease-in-out;
    }

    .form-input::placeholder {
        color: var(--text-400);
        opacity: 1;
    }

    /* Input icons */
    .input-icon {
        position: absolute;
        left: 1rem;
        top: 50%;
        transform: translateY(-50%);
        color: var(--text-400);
        font-size: 1.1rem;
        transition: color 0.2s ease;
        z-index: 10;
    }

    .form-input:focus + .input-icon {
        color: var(--admin-primary);
    }

    /* Password field with toggle */
    .password-wrapper {
        position: relative;
    }

    .password-toggle {
        position: absolute;
        right: 1rem;
        top: 50%;
        transform: translateY(-50%);
        background: none;
        border: none;
        color: var(--text-400);
        cursor: pointer;
        padding: 0.5rem;
        border-radius: 8px;
        transition: all 0.2s ease;
        z-index: 10;
    }

    .password-toggle:hover {
        color: var(--admin-primary);
        background: rgba(220, 38, 38, 0.1);
    }

    .error-message {
        display: flex;
        align-items: center;
        color: var(--error);
        font-size: 0.875rem;
        margin-top: 0.5rem;
        font-weight: 500;
        opacity: 0;
        transform: translateY(-10px);
        animation: slideInError 0.3s ease forwards;
    }

    .error-message::before {
        content: '⚠️';
        margin-right: 0.5rem;
        font-size: 1rem;
    }

    .admin-submit-btn {
        width: 100%;
        padding: 1rem 1.5rem;
        background: linear-gradient(135deg, var(--admin-primary), var(--admin-primary-dark));
        color: white;
        border: none;
        border-radius: var(--radius);
        font-size: 1rem;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        position: relative;
        overflow: hidden;
        margin-top: 0.5rem;
        box-shadow: var(--shadow-md);
    }

    .admin-submit-btn::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
        transition: left 0.5s;
    }

    .admin-submit-btn:hover {
        transform: translateY(-2px);
        box-shadow: 
            0 10px 25px rgba(220, 38, 38, 0.4),
            var(--shadow-lg);
    }

    .admin-submit-btn:hover::before {
        left: 100%;
    }

    .admin-submit-btn:active {
        transform: translateY(0);
    }

    .admin-divider {
        display: flex;
        align-items: center;
        margin: 2rem 0;
        color: var(--text-400);
        font-size: 0.875rem;
    }

    .admin-divider::before,
    .admin-divider::after {
        content: '';
        flex: 1;
        height: 1px;
        background: linear-gradient(90deg, transparent, var(--border), transparent);
    }

    .admin-divider span {
        margin: 0 1rem;
        background: var(--bg-white);
        padding: 0 0.5rem;
        font-weight: 500;
    }

    .admin-links {
        text-align: center;
    }

    .admin-link {
        color: var(--admin-primary);
        text-decoration: none;
        font-weight: 500;
        font-size: 0.95rem;
        transition: all 0.2s ease;
        position: relative;
    }

    .admin-link::after {
        content: '';
        position: absolute;
        bottom: -2px;
        left: 50%;
        width: 0;
        height: 2px;
        background: var(--admin-primary);
        transition: all 0.3s ease;
        transform: translateX(-50%);
    }

    .admin-link:hover {
        color: var(--admin-primary-dark);
    }

    .admin-link:hover::after {
        width: 100%;
    }

    .security-notice {
        background: linear-gradient(135deg, rgba(220, 38, 38, 0.05), rgba(239, 68, 68, 0.03));
        border: 1px solid rgba(220, 38, 38, 0.1);
        border-radius: 12px;
        padding: 1rem;
        margin-top: 2rem;
        font-size: 0.875rem;
        color: var(--text-600);
        text-align: center;
    }

    .security-notice::before {
        content: '🔒';
        display: block;
        font-size: 1.5rem;
        margin-bottom: 0.5rem;
    }

    /* Loading state */
    .loading .admin-submit-btn {
        position: relative;
        color: transparent;
    }

    .loading .admin-submit-btn::after {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 20px;
        height: 20px;
        margin: -10px 0 0 -10px;
        border: 2px solid rgba(255, 255, 255, 0.3);
        border-top: 2px solid white;
        border-radius: 50%;
        animation: spin 1s linear infinite;
    }

    /* Animations */
    @keyframes slideInUp {
        from {
            opacity: 0;
            transform: translateY(60px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes slideInError {
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes shake {
        0%, 100% { transform: translateX(0); }
        25% { transform: translateX(-8px); }
        75% { transform: translateX(8px); }
    }

    @keyframes adminPulse {
        0%, 100% { transform: scale(1); }
        50% { transform: scale(1.05); }
    }

    @keyframes adminGlow {
        0% { opacity: 0.2; }
        100% { opacity: 0.4; }
    }

    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }

    /* Responsive design */
    @media (max-width: 480px) {
        .admin-container {
            padding: 1rem;
        }

        .admin-card {
            max-width: 100%;
        }

        .admin-header {
            padding: 2rem 1.5rem 1.5rem;
        }

        .admin-form {
            padding: 0 1.5rem 2rem;
        }

        .admin-title {
            font-size: 1.75rem;
        }

        .admin-logo {
            width: 64px;
            height: 64px;
            font-size: 2rem;
        }
    }

    /* High contrast mode support */
    @media (prefers-contrast: high) {
        .admin-card {
            border: 2px solid var(--text-900);
        }
        
        .form-input:focus {
            outline: 3px solid var(--admin-primary);
            outline-offset: 2px;
        }
    }

    /* Reduced motion support */
    @media (prefers-reduced-motion: reduce) {
        * {
            animation-duration: 0.01ms !important;
            animation-iteration-count: 1 !important;
            transition-duration: 0.01ms !important;
        }
    }
</style>

<?php
Session::forget('link');
 Session::put(['link' => url()->previous()]);
?>

<div class="admin-container">
    <div class="admin-card">
        <div class="admin-header">
            <div class="admin-logo">⚡</div>
            <h1 class="admin-title">Admin Portal</h1>
            <p class="admin-subtitle">Secure administrative access</p>
            <div class="admin-badge">Administrator Access</div>
        </div>

        <form class="admin-form" action="{{route('super.login')}}" method="post" id="adminLoginForm">
            @csrf
            <div class="form-group">
                <label class="form-label" for="username">Username or Phone<sup style="color: var(--error);">*</sup></label>
                <div class="form-input-wrapper">
                    <input 
                        type="text" 
                        name="username" 
                        id="username"
                        class="form-input @error('username') error @enderror" 
                        placeholder="Enter admin username or phone"
                        required 
                        autocomplete="username"
                        value="{{ old('username') }}"
                    />
                    <i class="fal fa-user input-icon"></i>
                </div>
                @error('username')
                    <div class="error-message">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label class="form-label" for="password">Password<sup style="color: var(--error);">*</sup></label>
                <div class="form-input-wrapper password-wrapper">
                    <input 
                        type="password" 
                        name="password" 
                        id="password"
                        class="form-input @error('password') error @enderror" 
                        placeholder="Enter admin password"
                        required 
                        autocomplete="current-password"
                    />
                    <i class="fal fa-lock input-icon"></i>
                    <button type="button" class="password-toggle" id="togglePassword" aria-label="Toggle password visibility">
                        <i class="fal fa-eye" id="eyeIcon"></i>
                    </button>
                </div>
                @error('password')
                    <div class="error-message">{{ $message }}</div>
                @enderror
            </div>

            <button type="submit" class="admin-submit-btn" id="submitBtn">
                <i class="fal fa-sign-in-alt" style="margin-right: 0.5rem;"></i>
                Secure Login
            </button>

            <div class="admin-divider">
                <span>Security</span>
            </div>

            <div class="admin-links">
                <a href="{{route('password.request')}}" class="admin-link">
                    <i class="fal fa-key" style="margin-right: 0.5rem;"></i>
                    Reset Password
                </a>
            </div>

            <div class="security-notice">
                <strong>Security Notice:</strong><br>
                This is a secure administrative area. All login attempts are monitored and logged.
            </div>
        </form>
    </div>
</div>

@push('js')
<script>
$(document).ready(function () {
    const togglePassword = $('#togglePassword');
    const passwordInput = $('#password');
    const eyeIcon = $('#eyeIcon');
    const adminForm = $('#adminLoginForm');
    const submitBtn = $('#submitBtn');

    // Password toggle functionality
    togglePassword.on('click', function () {
        const type = passwordInput.attr('type') === 'password' ? 'text' : 'password';
        passwordInput.attr('type', type);
        
        if (type === 'text') {
            eyeIcon.removeClass('fa-eye').addClass('fa-eye-slash');
        } else {
            eyeIcon.removeClass('fa-eye-slash').addClass('fa-eye');
        }
    });

    // Form submission with loading state
    adminForm.on('submit', function(e) {
        submitBtn.prop('disabled', true);
        $(this).addClass('loading');
        
        // Add extra security check
        const username = $('#username').val().trim();
        const password = $('#password').val().trim();
        
        if (!username || !password) {
            e.preventDefault();
            $(this).removeClass('loading');
            submitBtn.prop('disabled', false);
            alert('Please fill in all required fields.');
            return false;
        }
        
        // Re-enable after 8 seconds if form doesn't submit (admin forms may take longer)
        setTimeout(function() {
            submitBtn.prop('disabled', false);
            adminForm.removeClass('loading');
        }, 8000);
    });

    // Enhanced form validation
    $('.form-input').on('blur', function() {
        const input = $(this);
        const value = input.val().trim();
        
        if (input.prop('required') && !value) {
            input.addClass('error');
            if (!input.siblings('.error-message').length) {
                input.parent().after('<div class="error-message">This field is required</div>');
            }
        } else {
            input.removeClass('error');
            input.siblings('.error-message').remove();
        }
    });

    // Remove error state on input
    $('.form-input').on('input', function() {
        $(this).removeClass('error');
        $(this).siblings('.error-message').remove();
    });

    // Auto-focus first input
    $('#username').focus();

    // Add keyboard shortcuts for admin convenience
    $(document).on('keydown', function(e) {
        // Ctrl+Enter or Cmd+Enter to submit form
        if ((e.ctrlKey || e.metaKey) && e.keyCode === 13) {
            adminForm.submit();
        }
    });

    // Security: Clear form data on page unload
    $(window).on('beforeunload', function() {
        $('#password').val('');
    });
});
</script>
@endpush

@push('css')
<style>
    /* Additional admin-specific styles */
    .form-input:autofill,
    .form-input:-webkit-autofill {
        -webkit-box-shadow: 0 0 0 30px var(--bg-white) inset !important;
        -webkit-text-fill-color: var(--text-900) !important;
    }
    
    /* Admin-specific focus styles */
    .admin-form .form-input:focus {
        box-shadow: 
            0 0 0 4px rgba(220, 38, 38, 0.1),
            inset 0 1px 0 rgba(255, 255, 255, 0.1);
    }
</style>
@endpush

@endsection