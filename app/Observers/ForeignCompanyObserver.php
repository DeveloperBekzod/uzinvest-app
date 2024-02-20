<?php

namespace App\Observers;

use App\Models\ForeignCompany;
use Illuminate\Support\Str;

class ForeignCompanyObserver
{
    /**
     * Handle the ForeignCompany "created and updated" event.
     */
    public function saving(ForeignCompany $foreignCompany): void
    {
        $foreignCompany['slug'] = Str::slug($foreignCompany['name']);
    }
}
