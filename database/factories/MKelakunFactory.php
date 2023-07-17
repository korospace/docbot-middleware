<?php

namespace Database\Factories;

use App\Models\MKelakun;
use Illuminate\Database\Eloquent\Factories\Factory;

class MKelakunFactory extends Factory
{
    protected $model = MKelakun::class;

    public function definition(): array
    {
    	return [
    	    'nkdkelakun' => "1.0.0.0",
            'nnmkelakun' => 'kel akun 1',
            'username_i' => 'superkoro',
    	];
    }
}
