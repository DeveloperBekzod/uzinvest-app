<?php

namespace Database\Seeders;

use App\Models\LocalCompany;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LocalCompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        LocalCompany::factory()->count(20)->create();
    }
}
