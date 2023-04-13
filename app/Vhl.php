<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Vhl extends Model
{

    use SoftDeletes;


    protected $fillable=['matricule','marque','date_mc','agence_id','intitule_id','statu_id','categorie_id','utilisateur'];
   // protected $hidden=['created_at','updated_at'];

    // protected $table = 'vhls';

    public function agence(){

       return $this->belongsTo(Agence::class);


    }
    public function categorie(){

        return $this->belongsTo(Categorie::class);

    }

    public function intitule(){

        return $this ->belongsTo(Intitule::class);
    }

    public function statu(){
        return $this->belongsTo(Statu::class);
    }




    public function Comment(){

        return $this ->hasMany(Comment::class);
    }
}
