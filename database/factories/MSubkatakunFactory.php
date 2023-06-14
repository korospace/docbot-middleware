<?php

namespace Database\Factories;

use App\Models\MSubkatakun;
use Illuminate\Database\Eloquent\Factories\Factory;

class MSubkatakunFactory extends Factory
{
    protected $model = MSubkatakun::class;

    public function definition(): array
    {
    	return [
    	    'nkdkelakun'    => "1.0.0.0",
    	    'nkdkatakun'    => "1.1.0.0",
    	    'nkdsubkatakun' => "1.1.1.0",
            'nnmsubkatakun' => 'subkat akun 1',
            'username_i'    => 'superkoro',
    	];
    }
}
