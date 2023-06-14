<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MKaryawan extends Model
{
    use HasFactory;

    protected $primaryKey = "nid";
    protected $guarded    = ['created_at','updated_at'];
    protected $fillable   = ['ntgllahir'];

    /**
     * Relationship
     * ===================================================
     */
    // public function golongan()
    // {
    //     return $this->hasOne(MGolongan::class,'nkdgolongan','nkdgolongan');
    // }

    // public function jabatan()
    // {
    //     return $this->hasOne(MJabatan::class,'nkdjabatan','nkdjabatan');
    // }

    /**
     * POJO
     * ===================================================
     */
    public function getNtgllahirAttribute()
    {
        return date("Y-m-d",$this->attributes['ntgllahir']);
    }

    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNidAttribute()
    {
        $lasId = DB::table('m_karyawans')->orderBy('nid','desc')->first();
        $lasId = $lasId ? $lasId->nid : 0;

        $this->attributes['nid'] = $lasId+10;
    }

    public function setNtgllahirAttribute($value)
    {
        $this->attributes['ntgllahir'] = strtotime($value);
    }
}
