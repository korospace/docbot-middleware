<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MDtlPaketSeragam extends Model
{
    use HasFactory;

    protected $guarded = ['created_at','updated_at'];

    /**
     * Relationship
     * ===================================================
     */
    public function Seragam()
    {
        return $this->hasOne(MSeragam::class,'nkdseragam','nkdseragam');
    }

    /**
     * POJO
     * ===================================================
     */
    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }
}
