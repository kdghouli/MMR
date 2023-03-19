<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVhlsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vhls', function (Blueprint $table) {
            $table->id();
            $table->string('matricule', 40);
            $table->string('marque', 60);
          // $table->string('type');
            $table->date('date_mc');
            //      $table->integer('puissance');
            //$table->string('chassis',70);
            //       $table->string('equipement');
            //           $table->foreignId('categorie_id')->constrained();
            //          $table->foreignId('intitule_id')->constrained();
            //         $table->foreignId('agence_id')->constrained();
            //          $table->foreignId('conducteur_id')->constrained();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vhls');
    }
}
