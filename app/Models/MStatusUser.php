<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MStatusUser extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdstatus";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdstatusAttribute()
    {
        $lastKd = DB::table('m_status_users')->orderBy('nkdstatus','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdstatus : 0;

        $this->attributes['nkdstatus'] = $lastKd+10;
    }
}
