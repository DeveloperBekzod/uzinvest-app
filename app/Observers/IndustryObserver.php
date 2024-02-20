<?php

namespace App\Observers;

use App\Models\Industry;
use Illuminate\Support\Str;

class IndustryObserver
{
    /**
     * Handle the Industry "created" event.
     */
    public function saving(Industry $industry): void
    {
        $industry['slug_uz'] = Str::slug($industry['name_uz']);
        $industry['slug_ru'] = Str::slug($industry['name_ru']);
    }
}
