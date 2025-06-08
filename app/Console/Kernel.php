<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        Commands\Campaign::class,
        Commands\SmsManagementCommand::class, // Add SMS management command
        Commands\SyncDeliveryStatus::class, // Add delivery tracking command
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')->hourly();
        $schedule->command('campaign:expire')->everyMinute();
        
        // Optional: Schedule SMS cleanup (runs daily at 2 AM)
        $schedule->command('sms:manage clean --days=30')->dailyAt('02:00');
        
        // Sync delivery status every 30 minutes for pending orders
        $schedule->command('orders:sync-delivery-status --limit=50')
                 ->everyThirtyMinutes()
                 ->withoutOverlapping()
                 ->runInBackground();
        
        // Daily sync for all orders sent to courier (runs at 3 AM)
        $schedule->command('orders:sync-delivery-status --limit=200')
                 ->dailyAt('03:00')
                 ->withoutOverlapping()
                 ->runInBackground();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}