<?php

namespace Database\Seeders;

use App\Models\MPeriode;
use App\Models\Periode;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MPeriodeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MPeriode::factory(7)->sequence(
            [
                "nname" => "2022/2023",
                "nstart"=> '2022-06-01',
                "nend"  => '2023-05-30',
            ],
            [
                "nname" => "2023/2024",
                "nstart"=> '2023-06-01',
                "nend"  => '2024-05-30',
            ],
            [
                "nname" => "2024/2025",
                "nstart"=> '2024-06-01',
                "nend"  => '2025-05-30',
            ],
            [
                "nname" => "2025/2026",
                "nstart"=> '2025-06-01',
                "nend"  => '2026-06-01',
            ],
            [
                "nname" => "2026/2027",
                "nstart"=> '2026-06-01',
                "nend"  => '2027-06-01',
            ],
            [
                "nname" => "2027/2028",
                "nstart"=> '2027-06-01',
                "nend"  => '2028-06-01',
            ],
            [
                "nname" => "2028/2029",
                "nstart"=> '2028-06-01',
                "nend"  => '2029-06-01',
            ],
        )->create();
    }
}
