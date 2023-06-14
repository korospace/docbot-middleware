<?php

namespace Database\Seeders;

use App\Models\MAcara;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MAcaraSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MAcara::factory()->count(1)->create();
    }
}
