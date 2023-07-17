<?php

namespace Database\Factories;

use App\Models\MEkskul;
use Illuminate\Database\Eloquent\Factories\Factory;

class MEkskulFactory extends Factory
{
    protected $model = MEkskul::class;

    public function definition(): array
    {
    	return [
    	    'nid'       => 0, // reset in model
    	    'nnmekskul' => 'Ekskul A',
    	    'nstatus'   => true,
    	];
    }
}
