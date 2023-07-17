<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MProyek extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdproyek";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * Relation
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

    public function setNkdproyekAttribute()
    {
        $lastKd = DB::table('m_proyeks')->orderBy('nkdproyek','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdproyek : 0;

        $this->attributes['nkdproyek'] = $lastKd+10;
    }
}
