<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Intitule extends Model
{
    public function vhls(){
        return $this ->hasMany(Vhl::class);
}
}
