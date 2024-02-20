<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as MyFaker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Industry>
 */
class IndustryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $fakerRU = MyFaker::create('ru_RU');

        return [
            'name_uz' => $this->faker->unique()->word(),
            'name_ru' => $fakerRU->unique->word,
        ];
    }
}
