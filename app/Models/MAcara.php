<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MAcara extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdacara";
    protected $guarded    = ['created_at','updated_at'];

    /**
     * Relation
     * ===================================================
     */
    public function periode() {
        return $this->belongsTo(MPeriode::class,'nkdperiode','nkdperiode');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNkdacaraAttribute()
    {
        $lastKd = DB::table('m_acaras')->orderBy('nkdacara','desc')->first();
        $lastKd = $lastKd ? $lastKd->nkdacara : 0;

        $this->attributes['nkdacara'] = $lastKd+10;
    }
}
