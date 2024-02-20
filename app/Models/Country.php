<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use App\Observers\CountryObserver;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

#[ObservedBy([CountryObserver::class])]

class Country extends Model
{
    use HasFactory;

    protected $fillable = [
        'name_uz',
        'name_ru',
        'slug_uz',
        'slug_ru',
    ];
}
