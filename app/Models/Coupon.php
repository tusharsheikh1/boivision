<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    /**
     * Get all of the users that are assigned this coupon.
     */
    public function users()
    {
        return $this->belongsToMany(User::class);
    }
}
