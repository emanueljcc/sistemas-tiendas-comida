<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGeneralsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('generals', function (Blueprint $table) {
            $table->increments('id');
            $table->string('producto',150);
            $table->integer('precio');
            $table->date('fecha');
            $table->integer('cantidad');
            $table->string('unidad',150);
            $table->string('direccion');
            $table->string('municipio',50);
            $table->string('parroquia',50);
            $table->integer('id_tienda');
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
        Schema::drop('generals');
    }
}
