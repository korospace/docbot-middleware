<?php

namespace Database\Seeders;

use App\Models\MKelakun;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MKelakunSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MKelakun::factory()->count(1)->create();
    }
}
