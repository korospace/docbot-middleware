<?php

namespace Database\Seeders;

use App\Models\MSeragam;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MSeragamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MSeragam::factory()->count(1)->create();
    }
}
