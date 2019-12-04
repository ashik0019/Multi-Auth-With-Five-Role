<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'role_id' => '1',
            'name' => 'Admin',
            'email' => 'admin@starit.com',
            'pro_img' => 'default.png',
            'password' => bcrypt('123456'),
            'created_at' => '2019-09-05 11:13:00',
            'updated_at' => '2019-09-05 11:13:00',
        ]);

    }
}
