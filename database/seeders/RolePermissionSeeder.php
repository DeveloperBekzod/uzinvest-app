<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Role::create(['name' => 'user']);
        Role::create(['name' => 'moderator']);
        Role::create(['name' => 'admin']);

        Permission::create(['name' => 'read data']);
        Permission::create(['name' => 'create data']);
        Permission::create(['name' => 'edit data']);
        Permission::create(['name' => 'delete data']);
    }
}
