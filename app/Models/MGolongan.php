<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MGolongan extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdgolongan";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdgolonganAttribute()
    {
        $lasKd = DB::table('m_golongans')->orderBy('nkdgolongan','DESC')->first();
        $lasKd = $lasKd ? $lasKd->nkdgolongan : 0;

        $this->attributes['nkdgolongan'] = $lasKd+10;
    }

}
