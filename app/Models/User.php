<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class User extends Model
{
    use HasFactory;
    
    protected $guarded = ['created_at','updated_at'];

    public function serializeDate(DateTimeInterface $date)
    {
        return $date->format("Y-m-d H:i:s");
    }

    public function setIdAttribute()
    {
        $lasId = DB::table('users')->orderBy('id','desc')->first();
        $lasId = $lasId ? $lasId->id : 0;

        $this->attributes['id'] = $lasId+10;
    }
    
}
