<?php

namespace App\Models;

use App\Observers\LocalCompanyObserver;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

#[ObservedBy([LocalCompanyObserver::class])]

class LocalCompany extends Model
{
    use HasFactory;
    protected $fillable = [
        'industry_id',
        'founder',
        'name',
        'slug',
        'amount',
        'email',
        'phone',
        'address',
    ];
}
