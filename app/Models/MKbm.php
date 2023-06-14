<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MKbm extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdkbm";
    protected $guarded    = ['created_at','updated_at'];

    public function getNameOfClass()
    {
        return static::class;
    }

    /**
     * Relationship
     * ===================================================
     */
    public function periode() {
        return $this->belongsTo(MPeriode::class,'nkdperiode','nkdperiode');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdkbmAttribute()
    {
        $lastKd = DB::table('m_kbms')->orderBy('nkdkbm','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdkbm : 0;

        $this->attributes['nkdkbm'] = $lastKd+10;
    }
}
