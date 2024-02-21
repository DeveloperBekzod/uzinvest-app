<?php

namespace App\Http\Controllers;

use App\Charts\CountryChart;
use App\Charts\IndustryChart;
use App\Charts\RegionChart;
use App\Models\Investor;
use App\Models\LocalCompany;
use App\Models\Project;

class DashboardController extends Controller
{
    public function index(CountryChart $countryChart, IndustryChart $industryChart, RegionChart $regionChart)
    {
        $total_investors = Investor::selectRaw('id')->count();
        $total_companies = LocalCompany::selectRaw('id')->count();
        $total_projects = Project::selectRaw('id')->count();
        $revenue = Investor::sum('amount');

        return view('dashboard', ['countryChart' => $countryChart->build(), 'industryChart' => $industryChart->build(), 'regionChart' => $regionChart->build()], compact('total_investors', 'total_companies', 'total_projects', 'revenue'));
    }
}
