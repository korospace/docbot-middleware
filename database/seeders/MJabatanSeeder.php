<?php

namespace Database\Seeders;

use App\Models\MJabatan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MJabatanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MJabatan::factory(1)->sequence(
            [
                'nkdjabatan' => 0, // reset in model
                'nnmjabatan' => 'I.B',
                'ntarif'     => 1500000,
                'nketerangan' => '-',
            ],
        )->create();

        MJabatan::factory(1)->sequence(
            [
                'nkdjabatan' => 0, // reset in model
                'nnmjabatan' => 'II.B',
                'ntarif'     => 1600000,
                'nketerangan' => '-',
            ],
        )->create();

        MJabatan::factory(1)->sequence(
            [
                'nkdjabatan' => 0, // reset in model
                'nnmjabatan' => 'III.B',
                'ntarif'     => 1700000,
                'nketerangan' => '-',
            ],
        )->create();
    }
}
