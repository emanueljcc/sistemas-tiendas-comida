<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use DB;
class General extends Model
{

    protected $fillable = [
        'producto', 
        'precio',
        'fecha',
        'cantidad',
        'unidad',
        'direccion',
        'municipio',
        'parroquia',
        'id_tienda',
    ];
    public $timestamps = false;




    public function scopeName($query, $name){ 
      if (trim($name != "")) {
        $query->where("producto","LIKE","%$name%");
      } 
    }

    public function getCategoryListAttribute(){
        return $this->groups()->lists('id');
    }

}
