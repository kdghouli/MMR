<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Statu extends Model
{
    public function vhls()
    {
        return $this->hasMany(Vhl::class);
    }
}
