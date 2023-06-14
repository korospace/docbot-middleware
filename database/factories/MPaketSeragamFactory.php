<?php

namespace Database\Factories;

use App\Models\MPaketSeragam;
use Illuminate\Database\Eloquent\Factories\Factory;

class MPaketSeragamFactory extends Factory
{
    protected $model = MPaketSeragam::class;

    public function definition(): array
    {
    	return [
    	    'nkdpaket'   => 0, // reset in model,
    	    'nnmpaket'   => 'paket seragam 1',
    	    'nkdperiode' => 1,
            'username_i' => 'superkoro',
    	];
    }
}
