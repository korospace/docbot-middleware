<?php

namespace Database\Seeders;

use App\Models\MPengembangan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MPengembanganSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MPengembangan::factory(1)->sequence(
            [
                'nkdpengembangan' => 0, // reset in model
                'nnmpengembangan' => 'pengembangan 2022-2023',
                'nkdperiode'      => 1,
                'nharga'          => 2500000,
                'username_i'      => 'superkoro',
            ],
        )->create();
        
        MPengembangan::factory(1)->sequence(
            [
                'nkdpengembangan' => 0, // reset in model
                'nnmpengembangan' => 'pengembangan  2028-2029',
                'nkdperiode'      => 7,
                'nharga'          => 2500000,
                'username_i'      => 'superkoro',
            ],
        )->create();
    }
}
