<?php

namespace Database\Seeders;

use App\Models\MSpp;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MSppSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp 2022-2023',
                'nkdperiode' => 1,
                'nharga'     => 2110000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp  2023-2024',
                'nkdperiode' => 2,
                'nharga'     => 2120000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp  2024-2025',
                'nkdperiode' => 3,
                'nharga'     => 2130000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp  2025-2026',
                'nkdperiode' => 4,
                'nharga'     => 2140000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp  2026-2027',
                'nkdperiode' => 5,
                'nharga'     => 2150000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp  2027-2028',
                'nkdperiode' => 6,
                'nharga'     => 2160000,
                'username_i' => 'superkoro',
            ],
        )->create();
        
        MSpp::factory(1)->sequence(
            [
                'nkdspp'     => 0, // reset in model
                'nnmspp'     => 'spp  2028-2029',
                'nkdperiode' => 7,
                'nharga'     => 2170000,
                'username_i' => 'superkoro',
            ],
        )->create();
    }
}
