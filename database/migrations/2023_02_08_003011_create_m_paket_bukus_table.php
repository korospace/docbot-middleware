<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_paket_bukus', function (Blueprint $table) {
            $table->bigIncrements('nid');
            $table->string('nkdpaket')->unique();
            $table->string('nnmpaket');
            $table->bigInteger('nkdperiode')->unsigned();
            $table->timestamps();

            $table->foreign('nkdperiode')
                ->references('nkdperiode')->on('m_periodes')
                ->onUpdate('cascade')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('m_paket_bukus');
    }
};
