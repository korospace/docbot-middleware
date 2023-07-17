<?php

namespace Database\Seeders;

use App\Models\MProyek;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MProyekSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MProyek::factory()->count(1)->create();
    }
}
