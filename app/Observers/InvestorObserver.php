<?php

namespace App\Observers;

use App\Models\Investor;
use Illuminate\Support\Str;

class InvestorObserver
{
    /**
     * Handle the Investor "create and update" event.
     */
    public function saving(Investor $investor): void
    {
        $investor['slug'] = Str::slug($investor['name']);
    }
}
