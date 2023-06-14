<?php

namespace Database\Factories;

use App\Models\MStatusUser;
use Illuminate\Database\Eloquent\Factories\Factory;

class MStatusUserFactory extends Factory
{
    protected $model = MStatusUser::class;

    public function definition(): array
    {
    	return [
    	    'nkdstatus'   => 0, // reset in model
    	    'nketerangan' => 'keterangan 1',
    	];
    }
}
