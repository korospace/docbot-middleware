<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MKatakun extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdkatakun";
    protected $guarded    = ['created_at','updated_at'];
    public $incrementing  = false;
    protected $keyType    = 'string';

    /**
     * Relation
     * ===================================================
     */
    public function kelompok() {
        return $this->belongsTo(MKelakun::class,'nkdkelakun','nkdkelakun');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }
}
