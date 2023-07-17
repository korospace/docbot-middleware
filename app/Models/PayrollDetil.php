<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class PayrollDetil extends Model
{
    protected $primaryKey = "nid";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * Relationship
     * ===================================================
     */
    public function payroll()
    {
        return $this->belongsTo(Payroll::class,'idpayroll','idpayroll');
    }

    public function karyawan()
    {
        return $this->hasOne(MKaryawan::class,'nnip','nnip');
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
        $lasId = DB::table('payroll_detils')->orderBy('nid','desc')->first();
        $lasId = $lasId ? $lasId->nid : 0;

        $this->attributes['nid'] = $lasId+10;
    }
}
