<?php

namespace Database\Seeders;

use App\Models\MSubkatakun;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MSubkatakunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MSubkatakun::factory()->count(1)->create();
    }
}
