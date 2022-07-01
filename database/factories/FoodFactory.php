<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class FoodFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'price' => $this->faker->unique()->numberBetween(1000, 2000),
            'old_price' => $this->faker->unique()->numberBetween(1000, 2000),
            'description' => $this->faker->paragraph(),
            'image' => ("images/food_".rand(1,8).".jpg"),
            'categories_id'=> (rand(1,20)),
        ];
    }
}
