<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MAssanah extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdassanah";
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

    public function setNkdassanahAttribute()
    {
        $lastKd = DB::table('m_assanahs')->orderBy('nkdassanah','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdassanah : 0;

        $this->attributes['nkdassanah'] = $lastKd+10;
    }
}
