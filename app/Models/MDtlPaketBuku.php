<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MDtlPaketBuku extends Model
{
    use HasFactory;

    protected $guarded = ['created_at','updated_at'];

    /**
     * Relationship
     * ===================================================
     */
    public function Buku()
    {
        return $this->hasOne(MBuku::class,'nkdbuku','nkdbuku');
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
