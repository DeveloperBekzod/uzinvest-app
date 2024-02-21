<?php

namespace App\Models;

use App\Observers\InvestorObserver;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

#[ObservedBy([InvestorObserver::class])]

class Investor extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_id',
        'industry_id',
        'project_id',
        'name',
        'slug',
        'amount',
        'email',
        'phone',
        'address',
    ];

    public function industry()
    {
        return $this->belongsTo(Industry::class);
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function project()
    {
        return $this->belongsTo(Project::class);
    }
}
