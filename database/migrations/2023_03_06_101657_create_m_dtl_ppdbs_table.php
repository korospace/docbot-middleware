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
        Schema::create('m_dtl_ppdbs', function (Blueprint $table) {
            $table->bigInteger('nkdppdb');
            $table->string('nitem');
            $table->double('nharga', 11, 2)->default(0);
            $table->timestamps();
            
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
        Schema::dropIfExists('m_dtl_ppdbs');
    }
};
