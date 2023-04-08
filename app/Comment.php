<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{

    protected $fillable = ['vhl_id','comment','active','statu_id'];


    public function vhl(){

        return $this->belongsTo(Vhl::class);

    }
    public function statu(){

        return $this->belongsTo(Statu::class);

    }
}
