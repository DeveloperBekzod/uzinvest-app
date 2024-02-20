<?php

namespace App\Observers;

use App\Models\Project;
use Illuminate\Support\Str;

class ProjectObserver
{
    /**
     * Handle the Project "create and update" event.
     */
    public function saving(Project $project): void
    {
        $project['slug_uz'] = Str::slug($project['name_uz']);
        $project['slug_ru'] = Str::slug($project['name_ru']);
    }
}
