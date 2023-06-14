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
        Schema::create('formulir_pendaftarans', function (Blueprint $table) {
            $table->string('nidpendaftaran')->primary();
            $table->string('nnama_lengkap');
            $table->string('nnotelp');
            $table->integer('nharga_formulir');
            $table->enum('nkelamin', ['laki-laki', 'perempuan']);
            $table->bigInteger('nkdperiode')->unsigned();
            $table->string('nkelas')->nullable();
            $table->boolean('diterima')->nullable();
            $table->timestamps();

            $table->foreign('nkdperiode')
                ->references('nkdperiode')->on('m_periodes')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkelas')
                ->references('nname')->on('m_kelas')
                ->onUpdate('cascade')
                ->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('formulir_pendaftarans');
    }
};
