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
        Schema::create('m_dtl_paket_bukus', function (Blueprint $table) {
            $table->string('nkdpaket')->default(null);
            $table->string('nkdbuku')->default(null);
            $table->timestamps();
            $table->foreign('nkdpaket')
                ->references('nkdpaket')->on('m_paket_bukus')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreign('nkdbuku')
                ->references('nkdbuku')->on('m_bukus')
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
        Schema::dropIfExists('m_dtl_paket_bukus');
    }
};
