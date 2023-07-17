<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MKomite extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdkomite";
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

    public function setNkdkomiteAttribute()
    {
        $lastKd = DB::table('m_komites')->orderBy('nkdkomite','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdkomite : 0;

        $this->attributes['nkdkomite'] = $lastKd+10;
    }
}
