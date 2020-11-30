<?php

use Illuminate\Database\Seeder;
use App\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = User::create([
            'name'=> 'Administrator',
            'email' => 'admin@bloggy.com',
            'password' => bcrypt('admin12345')
        ]);

        $admin->assignRole('admin');

        $writer = User::create([
            'name'=> 'Passionate Writer',
            'email' => 'writer@bloggy.com',
            'password' => bcrypt('writer12345')
        ]);

        $writer->assignRole('writer');
    }
}
