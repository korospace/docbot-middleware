<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(MKelasSeeder::class);
        $this->call(MUserLevelSeeder::class);
        $this->call(MStatusUserSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(MPeriodeSeeder::class);
        $this->call(MAcaraSeeder::class);
        $this->call(MProyekSeeder::class);
        // $this->call(MKelakunSeeder::class);
        // $this->call(MKatakunSeeder::class);
        // $this->call(MSubkatakunSeeder::class);
        // $this->call(MAkunSeeder::class);
        $this->call(MBukuSeeder::class);
        $this->call(MPaketBukuSeeder::class);
        $this->call(MDtlPaketBukuSeeder::class);
        $this->call(MEkskulSeeder::class);
        // $this->call(MGolonganSeeder::class);
        // $this->call(MJabatanSeeder::class);
        $this->call(MSiswaSeeder::class);
        $this->call(MKaryawanSeeder::class);
        $this->call(MSeragamSeeder::class);
        $this->call(MPaketSeragamSeeder::class);
        $this->call(MDtlPaketSeragamSeeder::class);
        $this->call(MSppSeeder::class);
        $this->call(MAssanahSeeder::class);
        $this->call(MKomiteSeeder::class);
        $this->call(MKbmSeeder::class);
        $this->call(MPengembanganSeeder::class);
        $this->call(MPpdbSeeder::class);
        $this->call(MDtlPpdbSeeder::class);
        $this->call(TypettrxSeeder::class);
    }
}
