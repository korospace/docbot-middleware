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
        Schema::create('detil_ttrx_ppdbs', function (Blueprint $table) {
            $table->bigInteger('nnotrx');
            $table->bigInteger('nkdppdb');
            $table->timestamps();

            $table->foreign('nnotrx')
                ->references('nnotrx')->on('ttrxes')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdppdb')
                ->references('nkdppdb')->on('m_ppdbs')
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
        Schema::dropIfExists('detil_ttrx_ppdbs');
    }
};
