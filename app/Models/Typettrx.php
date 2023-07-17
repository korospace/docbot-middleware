<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Typettrx extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdtype";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdtypeAttribute()
    {
        $lastKd = DB::table('typettrxes')->orderBy('nkdtype','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdtype : 0;

        $this->attributes['nkdtype'] = $lastKd+10;
    }
}
