<?php

namespace App\Observers;

use App\Models\Country;
use Illuminate\Support\Str;

class CountryObserver
{
    /**
     * Handle the Country "create and update" event.
     */

    public function saving(Country $country): void
    {
        $country['slug_uz'] = Str::slug($country['name_uz']);
        $country['slug_ru'] = Str::slug($country['name_ru']);
    }
}
