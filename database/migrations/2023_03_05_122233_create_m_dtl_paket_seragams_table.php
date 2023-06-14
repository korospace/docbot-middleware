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
        Schema::create('m_dtl_paket_seragams', function (Blueprint $table) {
            $table->bigInteger('nkdpaket');
            $table->bigInteger('nkdseragam');
            $table->timestamps();
            
            $table->foreign('nkdpaket')
                ->references('nkdpaket')->on('m_paket_seragams')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdseragam')
                ->references('nkdseragam')->on('m_seragams')
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
        Schema::dropIfExists('m_dtl_paket_seragams');
    }
};
