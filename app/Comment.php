<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function vhl(){

        return $this->belongsTo(Vhl::class);
    }
}
