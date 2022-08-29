<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pasien>
 */
class PasienFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nama' => $this->faker->name(),
            'umur' => $this->faker->numberBetween(1, 100),
            'jk_id' => mt_rand(1, 2),
            'jenistb_id' => mt_rand(1, 2),
            'kecamatan_id' => mt_rand(1, 27)
        ];
    }
}
