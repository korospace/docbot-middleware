<?php

namespace Database\Seeders;

use App\Models\Typettrx;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TypettrxSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Typettrx::factory(1)->sequence(
            [
                'nkdtype' => 0, // set from model
                'nnmtype' => 'pembayaran siswa'
            ],
        )->create();

        Typettrx::factory(1)->sequence(
            [
                'nkdtype' => 0, // set from model
                'nnmtype' => 'gaji karyawan'
            ],
        )->create();

        Typettrx::factory(1)->sequence(
            [
                'nkdtype' => 0, // set from model
                'nnmtype' => 'lain'
            ],
        )->create();
    }
}
