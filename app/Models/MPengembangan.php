<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MPengembangan extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdpengembangan";
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

    public function setNkdpengembanganAttribute()
    {
        $lastKd = DB::table('m_pengembangans')->orderBy('nkdpengembangan','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdpengembangan : 0;

        $this->attributes['nkdpengembangan'] = $lastKd+10;
    }
}
