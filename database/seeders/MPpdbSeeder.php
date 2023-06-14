<?php

namespace Database\Seeders;

use App\Models\MPpdb;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MPpdbSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MPpdb::factory(1)->sequence(
            [
                'nkdppdb'    => 0, // reset in model,
                'nnmppdb'    => 'ppdb 2022-2023',
                'nkdperiode' => 1,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MPpdb::factory(1)->sequence(
            [
                'nkdppdb'    => 0, // reset in model,
                'nnmppdb'    => 'ppdb  2028-2029',
                'nkdperiode' => 7,
                'username_i' => 'superkoro',
            ],
        )->create();
    }
}
