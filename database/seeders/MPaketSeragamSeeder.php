<?php

namespace Database\Seeders;

use App\Models\MPaketSeragam;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MPaketSeragamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MPaketSeragam::factory(1)->sequence(
            [
                'nkdpaket'   => 0, // reset in model,
                'nnmpaket'   => 'paket seragam 2022-2023',
                'nkdperiode' => 1,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MPaketSeragam::factory(1)->sequence(
            [
                'nkdpaket'   => 0, // reset in model,
                'nnmpaket'   => 'paket seragam 2028-2029',
                'nkdperiode' => 7,
                'username_i' => 'superkoro',
            ],
        )->create();
    }
}
