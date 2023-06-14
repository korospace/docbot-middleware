<?php

namespace Database\Seeders;

use App\Models\MKelas;
use Illuminate\Database\Seeder;

class MKelasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        MKelas::factory(6)->sequence(
            [
                "nname" => "1"
            ],
            [
                "nname" => "2"
            ],
            [
                "nname" => "3"
            ],
            [
                "nname" => "4"
            ],
            [
                "nname" => "5"
            ],
            [
                "nname" => "6"
            ]
        )->create();

    }
}
