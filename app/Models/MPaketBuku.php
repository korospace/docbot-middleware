<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MPaketBuku extends Model
{
    use HasFactory;

    protected $primaryKey = "nid";
    protected $guarded    = ['nid','created_at','updated_at'];
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
        return $this->hasMany(MDtlPaketBuku::class,'nkdpaket','nkdpaket');
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
        $total = DB::table('m_paket_bukus')
            ->join('m_dtl_paket_bukus', 'm_paket_bukus.nkdpaket', '=', 'm_dtl_paket_bukus.nkdpaket')
            ->join('m_bukus', 'm_dtl_paket_bukus.nkdbuku', '=', 'm_bukus.nkdbuku')
            ->select(DB::raw('SUM(m_bukus.nharga) as total_harga'))
            ->where("m_paket_bukus.nid",$this->nid)
            ->first()->total_harga;

        return (int)$total;
    }
}
