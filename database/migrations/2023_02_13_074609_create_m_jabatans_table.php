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
        // Schema::create('m_jabatans', function (Blueprint $table) {
        //     $table->bigInteger('nkdjabatan')->primary();
        //     $table->string('nnmjabatan');
        //     $table->double('ntarif', 11, 2)->default(0);
        //     $table->string('nketerangan',500);
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('m_jabatans');
    }
};
