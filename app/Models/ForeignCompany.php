<?php

namespace App\Models;

use App\Observers\ForeignCompanyObserver;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

#[ObservedBy([ForeignCompanyObserver::class])]

class ForeignCompany extends Model
{
    use HasFactory;
    protected $fillable = [
        'investor_id',
        'industry_id',
        'name',
        'slug',
        'amount',
        'email',
        'phone',
        'address',
    ];
}
