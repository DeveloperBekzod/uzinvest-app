<?php

namespace App\Http\Controllers;

use App\Models\Investor;
use App\Models\LocalCompany;
use App\Models\Project;

class DashboardController extends Controller
{
    public function index()
    {
        $total_investors = Investor::selectRaw('id')->count();
        $total_companies = LocalCompany::selectRaw('id')->count();
        $total_projects = Project::selectRaw('id')->count();
        $revenue = Investor::sum('amount');
        return view('dashboard', compact('total_investors', 'total_companies', 'total_projects', 'revenue'));
    }
}
