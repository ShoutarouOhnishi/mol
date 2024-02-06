<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AppUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('app_users')->insert([
            ['id' => 1, 'name' => 'testuser1'],
            ['id' => 2, 'name' => 'testuser2'],
            ['id' => 3, 'name' => 'testuser3'],
            ['id' => 4, 'name' => 'testuser4'],
            ['id' => 5, 'name' => 'testuser5'],
            ['id' => 6, 'name' => 'testuser6'],
        ]);
    }
}
