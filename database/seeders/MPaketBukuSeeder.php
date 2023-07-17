<?php

namespace Database\Seeders;

use App\Models\MPaketBuku;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MPaketBukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MPaketBuku::factory(1)->sequence(
            [
                'nkdpaket'   => 'PB1',
                'nnmpaket'   => 'paket buku kelas 1 2022-2023',
                'nkdperiode' => 1,
            ],
        )->create();
        
        MPaketBuku::factory(1)->sequence(
            [
                'nkdpaket'   => 'PB2',
                'nnmpaket'   => 'paket buku kelas 1 2028-2029',
                'nkdperiode' => 7,
            ],
        )->create();
    }
}
