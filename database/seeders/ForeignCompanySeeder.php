<?php

namespace Database\Seeders;

use App\Models\ForeignCompany;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ForeignCompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ForeignCompany::factory()->count(20)->create();
    }
}
