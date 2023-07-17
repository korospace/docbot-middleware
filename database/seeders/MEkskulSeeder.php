<?php

namespace Database\Seeders;

use App\Models\MEkskul;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MEkskulSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MEkskul::factory()->count(1)->create();
    }
}
