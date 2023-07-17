<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NomorSlipgaji extends Model
{
    protected $primaryKey = "nid";
    protected $guarded    = ['created_at','updated_at'];
    protected $keyType    = 'string';
}
