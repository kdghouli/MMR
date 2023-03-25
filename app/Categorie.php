<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    public function vhls()
    {
        return $this->hasMany(Vhl::class);
    }
}
