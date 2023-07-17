<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;

class MDispensasiTrx extends Model
{
    protected $guarded    = ['created_at','updated_at'];

    /**
     * Relation
     * ===================================================
     */
    public function siswa() {
        return $this->belongsTo(MSiswa::class,'nnis','nnis');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }
}
