<?php

namespace Database\Seeders;

use App\Models\MKatakun;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MKatakunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MKatakun::factory()->count(1)->create();
    }
}
