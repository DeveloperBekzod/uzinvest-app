<?php

namespace App\Models;

use App\Observers\IndustryObserver;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


#[ObservedBy([IndustryObserver::class])]

class Industry extends Model
{
    use HasFactory;

    protected $fillable = [
        'name_uz',
        'name_ru',
        'slug_uz',
        'slug_ru',
    ];

    public function LocalCompanies()
    {
        return $this->hasMany(LocalCompany::class);
    }
}
