<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MEkskul extends Model
{
    use HasFactory;

    protected $primaryKey = "nid";
    protected $fillable   = [
        'nid', 'nnmekskul', 'nstatus'
    ];

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
        $lastId = DB::table('m_ekskuls')->latest()->first();
        $lastId = $lastId ? $lastId->nid : 0;

        $this->attributes['nid'] = $lastId+10;
    }
}
