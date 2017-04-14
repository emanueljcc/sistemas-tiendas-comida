<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tienda extends Model
{
    protected $fillable = [
    	'fecha',
        'tienda',
    ];
    public $timestamps = false;
}
