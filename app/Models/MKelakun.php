<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MKelakun extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdkelakun";
    protected $guarded    = ['created_at','updated_at'];
    public $incrementing  = false;
    protected $keyType    = 'string';

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

}
