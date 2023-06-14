<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Payroll extends Model
{
    protected $primaryKey = "idpayroll";
    protected $guarded    = ['created_at','updated_at'];
    protected $appends    = ['bulan','total_gaji_karyawan'];

    /**
     * Relationship
     * ===================================================
     */
    public function metode()
    {
        return $this->belongsTo(MAkun::class,'akun_pembayaran','nkdakun');
    }

    public function DetilPayroll()
    {
        return $this->hasMany(PayrollDetil::class,'idpayroll','idpayroll');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setIdpayrollAttribute()
    {
        $lasId = DB::table('payrolls')->orderBy('idpayroll','desc')->first();
        $lasId = $lasId ? $lasId->idpayroll : 0;

        $this->attributes['idpayroll'] = $lasId+10;
    }

    public function getNtglAttribute()
    {
        return date("Y-m-d",$this->attributes['ntgl']);
    }

    public function getConfirmAttribute()
    {
        return $this->attributes['confirm']==1;
    }
    
    public function getBulanAttribute()
    {
        return date("F",$this->attributes['ntgl']);
    }
    
    public function getTotalGajiKaryawanAttribute()
    {
        $total = DB::table('payrolls')
            ->join('payroll_detils', 'payrolls.idpayroll', '=', 'payroll_detils.idpayroll')
            ->select(DB::raw('SUM(payroll_detils.totalgaji) as total_gaji_karyawan'))
            ->where("payrolls.idpayroll",$this->idpayroll)
            ->first()->total_gaji_karyawan;

        return (int)$total;
    }
}
