<?php

namespace Database\Factories;

use App\Models\MBuku;
use Illuminate\Database\Eloquent\Factories\Factory;

class MBukuFactory extends Factory
{
    protected $model = MBuku::class;

    public function definition(): array
    {
    	return [
    	    'nkdbuku'   => 'B1',
    	    'nnmbuku'   => 'Pendidikan Agama Islam',
    	    'nterbit'   => '2022',
    	    'npenerbit' => 'Si Galuh Tbk',
    	    'nharga'    => 12000,
    	];
    }
}
