<?php

namespace Database\Factories;

use App\Models\MProyek;
use Illuminate\Database\Eloquent\Factories\Factory;

class MProyekFactory extends Factory
{
    protected $model = MProyek::class;

    public function definition(): array
    {
    	return [
    	    'nkdproyek'   => 0, // reset in model
    	    'nnmproyek'   => 'proyek 1',
			'nkdperiode' => 1,
			'ndeskripsi' => 'ini proyek 1 hahaha',
            'username_i' => 'superkoro',
    	];
    }
}
