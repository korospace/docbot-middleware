<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MAkun extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdakun";
    protected $guarded    = ['created_at','updated_at'];
    public $incrementing  = false;
    protected $keyType    = 'string';
    // protected $appends    = ['nomor_akun'];

    /**
     * Relation
     * ===================================================
     */
    public function subkategori() {
        return $this->belongsTo(MSubkatakun::class,'nkdsubkatakun','nkdsubkatakun');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    // public function getNomorAkunAttribute()
    // {
    //     // $res = DB::table('m_akuns')
    //     //     ->join('m_subkatakuns', 'm_akuns.nkdsubkatakun', '=', 'm_subkatakuns.nkdsubkatakun')
    //     //     ->join('m_katakuns', 'm_subkatakuns.nkdkatakun', '=', 'm_katakuns.nkdkatakun')
    //     //     ->join('m_kelakuns', 'm_katakuns.nkdkelakun', '=', 'm_kelakuns.nkdkelakun')
    //     //     ->select(DB::raw('m_akuns.nkdakun,m_subkatakuns.nkdsubkatakun,m_katakuns.nkdkatakun,m_kelakuns.nkdkelakun'))
    //     //     ->where("m_akuns.nkdakun",$this->nkdakun)
    //     //     ->first();

    //     // return $res->nkdkelakun.".".$res->nkdkatakun.".".$res->nkdsubkatakun.".".$res->nkdakun;
    //     return $this->subkategori->kategori->kelompok->nkdkelakun.".".
    //         $this->subkategori->kategori->nkdkatakun.".".
    //         $this->subkategori->nkdsubkatakun.".".
    //         $this->nkdakun;
    // }
}
