<?php

namespace Database\Seeders;

use App\Models\MKbm;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MKbmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MKbm::factory(1)->sequence(
            [
                'nkdkbm'     => 0, // reset in model
                'nnmkbm'     => 'kbm 2022-2023',
                'nkdperiode' => 1,
                'nharga'     => 2400000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MKbm::factory(1)->sequence(
            [
                'nkdkbm'     => 0, // reset in model
                'nnmkbm'     => 'kbm  2028-2029',
                'nkdperiode' => 7,
                'nharga'     => 2400000,
                'username_i' => 'superkoro',
            ],
        )->create();
    }
}
