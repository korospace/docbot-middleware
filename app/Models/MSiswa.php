<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MSiswa extends Model
{
    use HasFactory;

    protected $primaryKey = "nid";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * Relationship
     * ===================================================
     */
    public function periode() {
        return $this->belongsTo(MPeriode::class,'nkdperiode','nkdperiode');
    }
    public function status() {
        return $this->belongsTo(MStatusUser::class,'nkdstatus','nkdstatus');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNidAttribute()
    {
        $lasId = DB::table('m_siswas')->orderBy('nid','desc')->first();
        $lasId = $lasId ? $lasId->nid : 0;

        $this->attributes['nid'] = $lasId+10;
    }
}
