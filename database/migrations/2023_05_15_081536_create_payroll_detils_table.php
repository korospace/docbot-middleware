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
        Schema::create('payroll_detils', function (Blueprint $table) {
            $table->bigInteger('nid',false)->primary();
            $table->bigInteger('idpayroll');
            $table->integer('nnip');
            $table->integer('jam');
            $table->integer('jasa');
            $table->integer('gajipokok');
            $table->integer('jasangajar');
            $table->integer('tjabatan');
            $table->integer('tkhusus');
            $table->integer('ttransport');
            $table->integer('tmakan');
            $table->integer('overtime');
            $table->integer('inval');
            $table->integer('lembur');
            $table->integer('ppinjaman');
            $table->integer('plambat');
            $table->integer('pizin');
            $table->integer('dapen');
            $table->integer('tht');
            $table->integer('totalgaji');
            $table->timestamps();
            
            $table->foreign('idpayroll')
                ->references('idpayroll')->on('payrolls')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            
            // $table->foreign('nnip')
            //     ->references('nnip')->on('m_karyawans')
            //     ->onUpdate('cascade')
            //     ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payroll_detils');
    }
};
