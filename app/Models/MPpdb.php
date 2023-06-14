<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MPpdb extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdppdb";
    protected $guarded    = ['created_at','updated_at'];
    protected $appends    = ['total_harga'];

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

    public function DetilPpdb()
    {
        return $this->hasMany(MDtlPpdb::class,'nkdppdb','nkdppdb');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function getTotalHargaAttribute()
    {
        $total = DB::table('m_ppdbs')
            ->join('m_dtl_ppdbs', 'm_ppdbs.nkdppdb', '=', 'm_dtl_ppdbs.nkdppdb')
            ->select(DB::raw('SUM(m_dtl_ppdbs.nharga) as total_harga'))
            ->where("m_ppdbs.nkdppdb",$this->nkdppdb)
            ->first()->total_harga;

        return $total;
    }

    public function setNkdppdbAttribute()
    {
        $lastKd = DB::table('m_ppdbs')->orderBy('nkdppdb','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdppdb : 0;

        $this->attributes['nkdppdb'] = $lastKd+10;
    }
}
