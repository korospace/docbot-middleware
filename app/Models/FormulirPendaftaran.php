<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class FormulirPendaftaran extends Model
{
    protected $primaryKey = "nidpendaftaran";
    protected $guarded    = ['created_at','updated_at'];
    public $incrementing  = false;
    protected $keyType    = 'string';

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

    public function setNidpendaftaranAttribute()
    {
        $data = DB::table('formulir_pendaftarans')->where("nidpendaftaran", "like", "P".date("y", time())."%")->orderBy("created_at", "DESC")->first();
        
        if (is_null($data) == true) {
            $this->attributes['nidpendaftaran'] = "P".date("y", time()) . "0001";
        }
        else {
            $yearDigit = substr($data->nidpendaftaran, 1, 2);
            
            $numAfterYear = substr($data->nidpendaftaran, 3, 4);
            $numAfterYear = sprintf("%04d", (int)$numAfterYear+1);

            $this->attributes['nidpendaftaran'] = "P".$yearDigit . $numAfterYear;
        }
    }
}
