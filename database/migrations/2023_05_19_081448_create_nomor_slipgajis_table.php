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
        Schema::create('nomor_slipgajis', function (Blueprint $table) {
            $table->bigIncrements('nid');
            $table->string('nomor');
            $table->bigInteger('idpayroll');
            $table->integer('nnip');
            $table->bigInteger('ntgl');
            $table->timestamps();

            $table->foreign('idpayroll')
                ->references('idpayroll')->on('payrolls')
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
        Schema::dropIfExists('nomor_slipgajis');
    }
};
