<?php

namespace Database\Seeders;

use App\Models\MKomite;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MKomiteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MKomite::factory(1)->sequence(
            [
                'nkdkomite'      => 0, // reset in model
                'nnmkomite'      => 'komite 2022-2023',
                'nkdperiode' 	 => 1,
                'nharga'     	 => 2300000,
                'username_i' 	 => 'superkoro',
            ],
        )->create();
        
        MKomite::factory(1)->sequence(
            [
                'nkdkomite'      => 0, // reset in model
                'nnmkomite'      => 'komite 2028-2029',
                'nkdperiode' 	 => 7,
                'nharga'     	 => 2300000,
                'username_i' 	 => 'superkoro',
            ],
        )->create();
    }
}
