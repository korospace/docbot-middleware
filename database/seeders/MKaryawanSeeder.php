<?php

namespace Database\Seeders;

use App\Models\MKaryawan;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Crypt;

class MKaryawanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MKaryawan::factory(1)->sequence(
            [
                "id_user"     => 50,
                'nid'         => 0, // reset in model
                'nnip'        => 2023001,
                'nnama'       => 'Pak Bagas',
                "nbidang"     => "pendidikan",
                'njabatan'    => "II.B",
                'ngolongan'   => "4-2",
                'nalamat'     => 'Tangerang selatan, Banten',
                'ntgllahir'   => '03-10-2000',
            ],
        )->create();

        MKaryawan::factory(1)->sequence(
            [
                "id_user"     => 60,
                'nid'         => 0, // reset in model
                'nnip'        => 2023002,
                'nnama'       => 'Pak Ruby',
                "nbidang"     => "teknologi",
                'njabatan'    => "II.B",
                'ngolongan'   => "4-3",
                'nalamat'     => 'Ciledug, Bantent',
                'ntgllahir'   => '03-10-2001',
            ],
        )->create();

        MKaryawan::factory(1)->sequence(
            [
                "id_user"     => 70,
                'nid'         => 0, // reset in model
                'nnip'        => 2023003,
                'nnama'       => 'Pak Frayudha',
                "nbidang"     => "keuangan",
                'njabatan'    => "III.B",
                'ngolongan'   => "3-2",
                'nalamat'     => 'Jakarta Selatan, Indonesia',
                'ntgllahir'   => '03-10-2001',
            ],
        )->create();
    }
}
