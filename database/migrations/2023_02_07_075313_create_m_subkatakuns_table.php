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
        // return 0;die;
        Schema::create('m_subkatakuns', function (Blueprint $table) {
            // $table->integer('nkdkelakun');
            $table->string('nkdkelakun');
            // $table->integer('nkdkatakun');
            $table->string('nkdkatakun');
            // $table->integer('nkdsubkatakun',false)->primary();
            $table->string('nkdsubkatakun')->primary();
            $table->string('nnmsubkatakun')->unique();
            $table->string('username_i')->nullable();
            $table->string('username_u')->nullable();
            $table->timestamps();

            $table->foreign('nkdkelakun')
                ->references('nkdkelakun')->on('m_kelakuns')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdkatakun')
                ->references('nkdkatakun')->on('m_katakuns')
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
        Schema::dropIfExists('m_subkatakuns');
    }
};
