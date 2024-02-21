<?php

namespace App\Models;

use App\Observers\ProjectObserver;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

#[ObservedBy([ProjectObserver::class])]

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'industry_id',
        'region_id',
        'investor_id',
        'local_company_id',
        'official_people_id',
        'name_uz',
        'name_ru',
        'slug_uz',
        'slug_ru',
        'amount',
    ];

    public function industry()
    {
        return $this->belongsTo(Industry::class);
    }

    public function region()
    {
        return $this->belongsTo(Region::class);
    }

    public function investor()
    {
        return $this->belongsTo(Investor::class);
    }

    public function official_people()
    {
        return $this->belongsTo(OfficialPerson::class);
    }

    public function local_company()
    {
        return $this->belongsTo(LocalCompany::class);
    }
}
