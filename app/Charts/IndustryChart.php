<?php

namespace App\Charts;

use ArielMejiaDev\LarapexCharts\LarapexChart;
use Illuminate\Support\Facades\DB;

class IndustryChart
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\PieChart
    {
        $data = DB::table('industries')
            ->select(DB::raw('industries.name_uz, sum(projects.amount) as amount'))
            ->join('projects', 'projects.industry_id', '=', 'industries.id')
            ->groupBy('industries.name_uz');

        $amounts = [];
        foreach ($data->pluck('amount')->toArray() as $key => $value) {
            array_push($amounts, intval($value));
        };
        return $this->chart->pieChart()
            ->addData($amounts)
            ->setLabels($data->pluck('industries.name_uz')->toArray());
    }
}
