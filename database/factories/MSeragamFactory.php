<?php

namespace Database\Factories;

use App\Models\MSeragam;
use Illuminate\Database\Eloquent\Factories\Factory;

class MSeragamFactory extends Factory
{
    protected $model = MSeragam::class;

    public function definition(): array
    {
    	return [
    	    'nkdseragam' => 0, // reset in model
    	    'nnmseragam' => 'seragam 1',
			'nharga'     => 12000,
            'username_i' => 'superkoro',
    	];
    }
}
