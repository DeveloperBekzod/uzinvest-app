<?php

namespace App\Models;

use App\Observers\RegionObserver;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

#[ObservedBy([RegionObserver::class])]

class Region extends Model
{
    use HasFactory;

    protected $fillable = [
        'name_uz',
        'name_ru',
        'slug_uz',
        'slug_ru',
    ];
}
