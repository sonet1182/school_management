<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    public function run()
    {
        $permissions = [
            ['name' => 'teacher-list', 'group_name' => 'teacher'],
            ['name' => 'teacher-create', 'group_name' => 'teacher'],
            ['name' => 'teacher-edit', 'group_name' => 'teacher'],
            ['name' => 'teacher-delete', 'group_name' => 'teacher'],
        ];

        foreach ($permissions as $permission) {
            Permission::create($permission);
        }
    }
}
