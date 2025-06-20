<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  ...$guards
     * @return mixed
     */
    public function handle(Request $request, Closure $next, ...$guards)
    {
        $guards = empty($guards) ? [null] : $guards;
        
        foreach ($guards as $guard) {
            
            if(Auth::guard()->check() && Auth::user()->role_id == 1){
                return Redirect()->route('admin.dashboard');
            }
            elseif(Auth::guard()->check() && Auth::user()->role_id == 2 || Auth::guard()->check() && Auth::user()->role_id == 3){
                return Redirect()->route('home');
            }
            else{
                return $next($request);
            }
        }
    }
}
