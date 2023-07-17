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
        Schema::create('m_karyawans', function (Blueprint $table) {
            $table->bigInteger('nid')->primary();
            $table->bigInteger('id_user');
            $table->integer('nnip');
            $table->string('nnama');
            // $table->bigInteger('nkdgolongan');
            // $table->bigInteger('nkdjabatan');
            $table->string('nbidang');
            $table->string('ngolongan');
            $table->string('njabatan');
            $table->string('nalamat',500);
            $table->bigInteger('ntgllahir');
            $table->timestamps();

            $table->foreign('id_user')
                ->references('id')->on('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');
                
            // $table->foreign('nkdgolongan')
            //     ->references('nkdgolongan')->on('m_golongans')
            //     ->onUpdate('cascade')
            //     ->onDelete('cascade');

            // $table->foreign('nkdjabatan')
            //     ->references('nkdjabatan')->on('m_jabatans')
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
        Schema::dropIfExists('m_karyawans');
    }
};
