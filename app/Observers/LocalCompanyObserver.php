<?php

namespace App\Observers;

use App\Models\LocalCompany;
use Illuminate\Support\Str;

class LocalCompanyObserver
{
    /**
     * Handle the LocalCompany "create and update" event.
     */
    public function saving(LocalCompany $localCompany): void
    {
        $localCompany['slug'] = Str::slug($localCompany['name']);
    }
}
