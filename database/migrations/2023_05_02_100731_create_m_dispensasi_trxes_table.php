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
        Schema::create('m_dispensasi_trxes', function (Blueprint $table) {
            $table->id();
            $table->string('nkdpaketbuku')->nullable();
            $table->bigInteger('nkdpaketseragam')->nullable();
            $table->bigInteger('nkdspp')->nullable();
            $table->bigInteger('nkdassanah')->nullable();
            $table->bigInteger('nkdkomite')->nullable();
            $table->bigInteger('nkdkbm')->nullable();
            $table->bigInteger('nkdpengembangan')->nullable();
            $table->bigInteger('nkdppdb')->nullable();
            $table->string('nnis');
            $table->double('nnominal', 11, 2)->default(0);
            $table->string('nfile')->nullable();

            $table->timestamps();

            $table->foreign('nkdpaketbuku')
                ->references('nkdpaket')->on('m_paket_bukus')
                ->onUpdate('cascade')
                ->onDelete('cascade');
                
            $table->foreign('nkdpaketseragam')
                ->references('nkdpaket')->on('m_paket_seragams')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdspp')
                ->references('nkdspp')->on('m_spps')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdassanah')
                ->references('nkdassanah')->on('m_assanahs')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdkomite')
                ->references('nkdkomite')->on('m_komites')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdkbm')
                ->references('nkdkbm')->on('m_kbms')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdpengembangan')
                ->references('nkdpengembangan')->on('m_pengembangans')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdppdb')
                ->references('nkdppdb')->on('m_ppdbs')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nnis')
                ->references('nnis')->on('m_siswas')
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
        Schema::dropIfExists('m_dispensasi_trxes');
    }
};
