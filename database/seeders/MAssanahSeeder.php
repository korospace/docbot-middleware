<?php

namespace Database\Seeders;

use App\Models\MAssanah;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MAssanahSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MAssanah::factory(1)->sequence(
            [
                'nkdassanah'     => 0, // reset in model
                'nnmassanah'     => 'assanah 2022-2023',
                'nkdperiode' 	 => 1,
                'nharga'     	 => 2200000,
                'username_i' 	 => 'superkoro',
            ],
        )->create();
        
        MAssanah::factory(1)->sequence(
            [
                'nkdassanah'     => 0, // reset in model
                'nnmassanah'     => 'assanah  2028-2029',
                'nkdperiode' 	 => 7,
                'nharga'     	 => 2200000,
                'username_i' 	 => 'superkoro',
            ],
        )->create();
    }
}
