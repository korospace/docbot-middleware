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
        Schema::create('m_pengembangans', function (Blueprint $table) {
            $table->bigInteger('nkdpengembangan',false)->primary();
            $table->string('nnmpengembangan')->unique();
            $table->bigInteger('nkdperiode')->unsigned();
            $table->integer('nharga');
            $table->string('username_i')->nullable();
            $table->string('username_u')->nullable();
            $table->timestamps();

            $table->foreign('nkdperiode')
                ->references('nkdperiode')->on('m_periodes')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('username_i')
                ->references('username')->on('users')
                ->onUpdate('cascade')
                ->nullOnDelete();
            
            $table->foreign('username_u')
                ->references('username')->on('users')
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
        Schema::dropIfExists('m_pengembangans');
    }
};
