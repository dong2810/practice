<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        return DB::table('tb_employees')->insert([
        	'password' => bcrypt('123456789'),
        	'username' => 'nguyenhuydong'
        ]);
    }
}
