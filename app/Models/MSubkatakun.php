<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MSubkatakun extends Model
{
    use HasFactory;

    protected $primaryKey = "nkdsubkatakun";
    protected $guarded    = ['created_at','updated_at'];
    public $incrementing  = false;
    protected $keyType    = 'string';

    /**
     * Relation
     * ===================================================
     */
    public function kategori() {
        return $this->belongsTo(MKatakun::class,'nkdkatakun','nkdkatakun');
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
