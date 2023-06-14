<?php

namespace Database\Seeders;

use App\Models\MDtlPaketSeragam;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MDtlPaketSeragamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MDtlPaketSeragam::factory(2)->sequence(
            [
                'nkdpaket'   => 10,
    	        'nkdseragam' => 10,
            ],
            [
                'nkdpaket'   => 20,
    	        'nkdseragam' => 10,
            ],
        )->create();
    }
}
