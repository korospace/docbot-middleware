<?php

namespace Database\Seeders;

use App\Models\MSiswa;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Crypt;

class MSiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MSiswa::factory(1)->sequence(
            [
                "id_user"       => 20,
                "nid"           => 0, // set in model
                "nnis"          => "220001",
                "nnisn"         => "n220001",
                "nkdperiode"    => 1,
                "nnama_lengkap" => "Bagaskoro",
                "nnotelp"       => "085155352499",
                "nkelamin"      => "laki-laki",
                "nkelas"        => "1",
                "nalamat"       => "indonesia",
                "nkdstatus"     => 10,
            ],
        )->create();

        MSiswa::factory(1)->sequence(
            [
                "id_user"       => 30,
                "nid"           => 0, // set in model
                "nnis"          => "220002",
                "nnisn"         => "n220002",
                "nkdperiode"    => 1,
                "nnama_lengkap" => "Rubi ahmad",
                "nnotelp"       => "085157902550",
                "nkelamin"      => "laki-laki",
                "nkelas"        => "1",
                "nalamat"       => "indonesia",
                "nkdstatus"     => 10,
            ],
        )->create();

        MSiswa::factory(1)->sequence(
            [
                "id_user"       => 40,
                "nid"           => 0, // set in model
                "nnis"          => "230001",
                "nnisn"         => "n230001",
                "nkdperiode"    => 2,
                "nnama_lengkap" => "frayudha",
                "nnotelp"       => "085781077948",
                "nkelamin"      => "laki-laki",
                "nkelas"        => "1",
                "nalamat"       => "indonesia",
                "nkdstatus"     => 10,
            ],
        )->create();
    }
}
