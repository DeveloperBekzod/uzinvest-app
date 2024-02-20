<?php

namespace Database\Seeders;

use App\Models\OfficialPerson;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OfficialPersonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        OfficialPerson::factory()->count(20)->create();
    }
}
