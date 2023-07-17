<?php

namespace Database\Seeders;

use App\Models\MUserLevel;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MUserLevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MUserLevel::factory(3)->sequence(
            [
                "nid"  => 1,
                "nname" => "admin"
            ],
            [
                "nid"  => 2,
                "nname" => "siswa"
            ],
            [
                "nid"  => 3,
                "nname" => "karyawan"
            ]
        )->create();
    }
}
