<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Intitule extends Model
{
    protected $hidden=['created_at','updated_at'];
    public function vhls(){
        return $this ->hasMany(Vhl::class);
}
}
