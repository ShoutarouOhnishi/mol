<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rooms')->insert([
            ['id' => 'test1', 'ended_at' => now()->addDays(1), 'created_at' => now(), 'updated_at' => now()],
            ['id' => 'test2', 'ended_at' => now()->addDays(2), 'created_at' => now(), 'updated_at' => now()],
            ['id' => 'test3', 'ended_at' => now()->addDays(3), 'created_at' => now(), 'updated_at' => now()],
        ]);

        DB::table('room_members')->insert([
            ['room_id' => 'test1', 'app_user_id' => 1, 'rank' => 1],
            ['room_id' => 'test1', 'app_user_id' => 2, 'rank' => 2],
            ['room_id' => 'test2', 'app_user_id' => 3, 'rank' => 1],
            ['room_id' => 'test2', 'app_user_id' => 4, 'rank' => 2],
            ['room_id' => 'test3', 'app_user_id' => 5, 'rank' => 1],
            ['room_id' => 'test3', 'app_user_id' => 6, 'rank' => 2],
        ]);
    }
}
