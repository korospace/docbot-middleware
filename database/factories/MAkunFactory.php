<?php

namespace Database\Factories;

use App\Models\MAkun;
use Illuminate\Database\Eloquent\Factories\Factory;

class MAkunFactory extends Factory
{
    protected $model = MAkun::class;

    public function definition(): array
    {
    	return [
    	    'nkdkelakun'      => "1.0.0.0",
    	    'nkdkatakun'      => "1.1.0.0",
    	    'nkdsubkatakun'   => "1.1.1.0",
    	    'nkdakun'         => "1.1.1.1",
    	    'nnmakun'         => 'akun 1',
    	    'debit_or_kredit' => 'kredit',
    	    'username_i'      => 'superkoro',
    	];
    }
}
