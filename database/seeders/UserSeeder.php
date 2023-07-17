<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Crypt;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // admin 
        $data1 = [
            [
                "id"       => 0, // set in model (10)
                "username" => "superkoro",
                "password" => Crypt::encrypt('superkoro'),
                "nid_level"=> 1,
            ],
            [
                "id"       => 0, // set in model (20)
                "username" => "220001",
                "password" => Crypt::encrypt('220001'),
                "nid_level"=> 2, // siswa  
            ],
            [
                "id"       => 0, // set in model (30)
                "username" => "220002",
                "password" => Crypt::encrypt('220002'),
                "nid_level"=> 2, // siswa
            ],
            [
                "id"       => 0, // set in model (40)
                "username" => "230001",
                "password" => Crypt::encrypt('230001'),
                "nid_level"=> 2, // siswa
            ],
            [
                "id"       => 0, // set in model (50)
                "username" => "2023001",
                "password" => Crypt::encrypt('2023001'),
                "nid_level"=> 3, // karyawan
            ],
            [
                "id"       => 0, // set in model (60)
                "username" => "2023002",
                "password" => Crypt::encrypt('2023002'),
                "nid_level"=> 3, // karyawan
            ],
            [
                "id"       => 0, // set in model (70)
                "username" => "2023003",
                "password" => Crypt::encrypt('2023003'),
                "nid_level"=> 3, // karyawan
            ],
        ];

        foreach ($data1 as $value) {
            User::create($value);
        }
    }
}
