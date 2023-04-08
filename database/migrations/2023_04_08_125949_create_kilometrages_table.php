<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKilometragesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kilometrages', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('kilometrage');
            $table->date('date');
            $table->text('Observation');
            $table->timestamps();
            $table->foreignId('vhl_id')->nullable()
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
        Schema::dropIfExists('kilometrages');
    }
}
