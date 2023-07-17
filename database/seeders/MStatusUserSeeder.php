<?php

namespace Database\Seeders;

use App\Models\MStatusUser;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MStatusUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MStatusUser::factory()->count(1)->create();
    }
}
