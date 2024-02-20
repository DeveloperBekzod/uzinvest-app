<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Project>
 */
class ProjectFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'industry_id' => $this->faker->numberBetween(1, 20),
            'region_id' => $this->faker->numberBetween(1, 20),
            'investor_id' => $this->faker->numberBetween(1, 20),
            'local_company_id' => $this->faker->numberBetween(1, 20),
            'official_people_id' => $this->faker->numberBetween(1, 20),
            'name_uz' => $this->faker->name(),
            'name_ru' => $this->faker->name(),
            'amount' => $this->faker->numberBetween(10000, 2000000000),
        ];
    }
}
