<?php

namespace Database\Factories;

use App\Models\MKatakun;
use Illuminate\Database\Eloquent\Factories\Factory;

class MKatakunFactory extends Factory
{
    protected $model = MKatakun::class;

    public function definition(): array
    {
    	return [
    	    'nkdkelakun' => "1.0.0.0",
    	    'nkdkatakun' => "1.1.0.0",
            'nnmkatakun' => 'kat akun 1',
            'username_i' => 'superkoro',
    	];
    }
}
