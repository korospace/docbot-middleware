<?php

namespace Database\Factories;

use App\Models\MAcara;
use Illuminate\Database\Eloquent\Factories\Factory;

class MAcaraFactory extends Factory
{
    protected $model = MAcara::class;

    public function definition(): array
    {
    	return [
    	    'nkdacara'   => 0, // reset in model
    	    'nnmacara'   => 'acara 1',
			'nkdperiode' => 1,
			'ndeskripsi' => 'ini acara 1 hahaha',
            'username_i' => 'superkoro',
    	];
    }
}
