<?php

namespace Database\Seeders;

use App\Models\MDtlPaketBuku;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MDtlPaketBukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MDtlPaketBuku::factory(2)->sequence(
            [
                'nkdpaket' => 'PB1',
    	        'nkdbuku' => 'B1',
            ],
            [
                'nkdpaket' => 'PB2',
    	        'nkdbuku' => 'B1',
            ]
        )->create();
    }
}
