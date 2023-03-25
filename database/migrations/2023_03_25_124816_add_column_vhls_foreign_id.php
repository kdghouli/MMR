<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnVhlsForeignId extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('vhls', function (Blueprint $table) {

            $table->foreignId('agence_id')
            ->constrained()->cascadeOnDelete()->cascadeOnUpdate();

            $table->foreignId('categorie_id')->nullable()
            ->constrained()->cascadeOnDelete()->cascadeOnUpdate();

            $table->foreignId('intitule_id')->nullable()
            ->constrained()->cascadeOnDelete()->cascadeOnUpdate();

            $table->foreignId('statu_id')->nullable()
            ->constrained()->cascadeOnDelete()->cascadeOnUpdate();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
