<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MJabatan extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdjabatan";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdjabatanAttribute()
    {
        $lasKd = DB::table('m_jabatans')->orderBy('nkdjabatan','DESC')->first();
        $lasKd = $lasKd ? $lasKd->nkdjabatan : 0;

        $this->attributes['nkdjabatan'] = $lasKd+10;
    }
}
