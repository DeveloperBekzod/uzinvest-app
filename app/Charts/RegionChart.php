<?php

namespace App\Charts;

use ArielMejiaDev\LarapexCharts\LarapexChart;
use Illuminate\Support\Facades\DB;

class RegionChart
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\BarChart
    {
        $data = DB::table('regions')
            ->select(DB::raw('regions.name_uz, sum(projects.amount) as amount'))
            ->join('projects', 'projects.industry_id', '=', 'regions.id')
            ->groupBy('regions.name_uz')
            ->orderByDesc('amount')
            ->limit(10);

        $amounts = [];
        foreach ($data->pluck('amount')->toArray() as $key => $value) {
            array_push($amounts, intval($value));
        };
        return $this->chart->barChart()
            ->setTitle('топ-10 регионов')
            ->addData('Сумма инвестиций ($)', $amounts)
            ->setXAxis($data->pluck('regions.name_uz')->toArray());
    }
}
