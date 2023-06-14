<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MPaketSeragam extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdpaket";
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
    
    public function DetilPaket()
    {
        return $this->hasMany(MDtlPaketSeragam::class,'nkdpaket','nkdpaket');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    // public function getNthajarAttribute()
    // {
    //     $th1 = substr($this->attributes['nthajar'],0,4);
    //     $th2 = substr($this->attributes['nthajar'],4,4);

    //     return "$th1-$th2";
    // }

    public function getTotalHargaAttribute()
    {
        $total = DB::table('m_paket_seragams')
            ->join('m_dtl_paket_seragams', 'm_paket_seragams.nkdpaket', '=', 'm_dtl_paket_seragams.nkdpaket')
            ->join('m_seragams', 'm_dtl_paket_seragams.nkdseragam', '=', 'm_seragams.nkdseragam')
            ->select(DB::raw('SUM(m_seragams.nharga) as total_harga'))
            ->where("m_paket_seragams.nkdpaket",$this->nkdpaket)
            ->first()->total_harga;

        return (int)$total;
    }

    public function setNkdpaketAttribute()
    {
        $lastKd = DB::table('m_paket_seragams')->orderBy('nkdpaket','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdpaket : 0;

        $this->attributes['nkdpaket'] = $lastKd+10;
    }
}
