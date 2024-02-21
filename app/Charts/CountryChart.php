<?php

namespace App\Charts;

use ArielMejiaDev\LarapexCharts\LarapexChart;
use Illuminate\Support\Facades\DB;

class CountryChart
{
    protected $chart;

    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    public function build(): \ArielMejiaDev\LarapexCharts\AreaChart
    {

        $data = DB::table('countries')
            ->select(DB::raw('countries.name_uz, sum(investors.amount) as amount'))
            ->join('investors', 'investors.country_id', '=', 'countries.id')
            ->groupBy('countries.name_uz')
            ->limit(6);

        $amounts = [];
        foreach ($data->pluck('amount')->toArray() as $key => $value) {
            array_push($amounts, intval($value));
        };
        return $this->chart->areaChart()
            ->addData('Стоимость инвестиции $', $amounts)
            ->setXAxis($data->pluck('countries.name_uz')->toArray());
    }
}
