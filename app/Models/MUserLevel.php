<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MUserLevel extends Model
{
    use HasFactory;

    protected $primaryKey = "nid";
    protected $guarded    = ["nid","name","created_at","updated_at"];
}
