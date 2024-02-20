<?php

namespace App\Observers;

use App\Models\Region;
use Illuminate\Support\Str;

class RegionObserver
{
    /**
     * Handle the Region "create and update" event.
     */
    public function saving(Region $region): void
    {
        $region['slug_uz'] = Str::slug($region['name_uz']);
        $region['slug_ru'] = Str::slug($region['name_ru']);
    }
}
