<?php

namespace Database\Seeders;

use App\Models\MDtlPpdb;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MDtlPpdbSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MDtlPpdb::factory(10)->sequence(
            [
                "nkdppdb" => "10",
                "nitem"   => "SPP",
                "nharga"  => '2100000',
            ],
            [
                "nkdppdb" => "10",
                "nitem"   => "assanah",
                "nharga"  => '2200000',
            ],
            [
                "nkdppdb" => "10",
                "nitem"   => "komite",
                "nharga"  => '2300000',
            ],
            [
                "nkdppdb" => "10",
                "nitem"   => "KBM",
                "nharga"  => '2400000',
            ],
            [
                "nkdppdb" => "10",
                "nitem"   => "pengembangan",
                "nharga"  => '2500000',
            ],
            [
                "nkdppdb" => "20",
                "nitem"   => "SPP",
                "nharga"  => '2100000',
            ],
            [
                "nkdppdb" => "20",
                "nitem"   => "assanah",
                "nharga"  => '2200000',
            ],
            [
                "nkdppdb" => "20",
                "nitem"   => "komite",
                "nharga"  => '2300000',
            ],
            [
                "nkdppdb" => "20",
                "nitem"   => "KBM",
                "nharga"  => '2400000',
            ],
            [
                "nkdppdb" => "20",
                "nitem"   => "pengembangan",
                "nharga"  => '2700000',
            ],
        )->create();
    }
}
