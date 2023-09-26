<?php

namespace Database\Factories;

use App\Enums\Gender;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AppUser>
 */
class AppUserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'firebase_uid' => Str::random(28),
            'name' => substr($this->faker->name, 0, 15),
            'is_ban' => false,
            'reason_for_ban' => null,
            'is_withdraw' => false,
        ];
    }
}
