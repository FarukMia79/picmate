<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $user = User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('123456'),
            'image' => 'default.png',
            'status' => 1
        ]);

        $role = Role::firstOrCreate(['name' => 'Admin']);

        $permissions = Permission::pluck('id', 'id')->all();
        $role->syncPermissions($permissions);

        $user->assignRole([$role->id]);
    }
}
