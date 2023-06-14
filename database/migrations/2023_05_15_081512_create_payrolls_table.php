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
        Schema::create('payrolls', function (Blueprint $table) {
            $table->bigInteger('idpayroll',false)->primary();
            $table->boolean('confirm')->default(false);
            $table->text('ndeskripsi')->nullable();
            $table->bigInteger('ntgl')->nullable();
            $table->string('akun_pembayaran')->nullable();
            $table->timestamps();

            $table->foreign('akun_pembayaran')
                ->references('nkdakun')->on('m_akuns')
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
        Schema::dropIfExists('payrolls');
    }
};
