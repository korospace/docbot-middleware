<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MPeriode extends Model
{
    use HasFactory;

    protected $primaryKey = 'nkdperiode';
    protected $guarded    = ['nkdperiode','created_at','updated_at'];

    /**
     * POJO
     * ===================================================
     */
    public function getNstartAttribute()
    {
        return date("Y-m-d",$this->attributes['nstart']);
    }

    public function getNendAttribute()
    {
        return date("Y-m-d",$this->attributes['nend']);
    }

    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setNstartAttribute($value)
    {
        $this->attributes['nstart'] = strtotime($value." 00:01");
    }

    public function setNendAttribute($value)
    {
        $this->attributes['nend'] = strtotime($value." 23:59");
    }
}
