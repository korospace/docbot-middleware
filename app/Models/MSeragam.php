<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MSeragam extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdseragam";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdseragamAttribute()
    {
        $lastKd = DB::table('m_seragams')->orderBy('nkdseragam','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdseragam : 0;

        $this->attributes['nkdseragam'] = $lastKd+10;
    }
    
}
