<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Unidad extends Model
{
    protected $fillable = [
    	'fecha',
        'unidad',
    ];
    public $timestamps = false;
}
