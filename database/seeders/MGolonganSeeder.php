<?php

namespace Database\Seeders;

use App\Models\MGolongan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MGolonganSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MGolongan::factory(1)->sequence(
            [
                'nkdgolongan' => 0, // reset in model
                'nnmgolongan' => '4-1',
                'ntarif'      => 1500000,
                'nketerangan' => '-',
            ],
        )->create();

        MGolongan::factory(1)->sequence(
            [
                'nkdgolongan' => 0, // reset in model
                'nnmgolongan' => '4-2',
                'ntarif'      => 1600000,
                'nketerangan' => '-',
            ],
        )->create();

        MGolongan::factory(1)->sequence(
            [
                'nkdgolongan' => 0, // reset in model
                'nnmgolongan' => '4-3',
                'ntarif'      => 1700000,
                'nketerangan' => '-',
            ],
        )->create();
    }
}
