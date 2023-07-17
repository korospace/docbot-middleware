<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MSpp extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdspp";
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

    public function setNkdsppAttribute()
    {
        $lastKd = DB::table('m_spps')->orderBy('nkdspp','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdspp : 0;

        $this->attributes['nkdspp'] = $lastKd+10;
    }
}
