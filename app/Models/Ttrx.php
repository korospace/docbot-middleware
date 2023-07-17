<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Ttrx extends Model
{
    protected $primaryKey = "nnotrx";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNnotrxAttribute()
    {
        $lastKd = DB::table('ttrxes')->orderBy('created_at','desc')->first();
        $lastKd = $lastKd ? $lastKd->nnotrx : 0;

        $this->attributes['nnotrx'] = $lastKd+10;
    }

    public function setNtgltrxAttribute($value)
    {
        $this->attributes['ntgltrx'] = strtotime($value." 06:00");
    }
}
