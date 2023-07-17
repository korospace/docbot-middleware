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
        Schema::create('m_siswas', function (Blueprint $table) {
            $table->bigInteger('nid')->primary();
            $table->bigInteger('id_user');
            $table->string('nnis')->unique()->nullable();
            $table->string('nnisn')->unique()->nullable();
            $table->bigInteger('nkdperiode')->unsigned();
            $table->string('nnama_lengkap')->nullable();
            $table->string('nnotelp')->nullable();
            $table->enum('nkelamin', ['laki-laki', 'perempuan'])->nullable();
            $table->string('nkelas')->nullable();
            $table->text('nalamat')->nullable();
            $table->bigInteger('nkdstatus')->nullable();
            $table->timestamps();
            
            $table->foreign('id_user')
                ->references('id')->on('users')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdperiode')
                ->references('nkdperiode')->on('m_periodes')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkelas')
                ->references('nname')->on('m_kelas')
                ->onUpdate('cascade')
                ->nullOnDelete();

            $table->foreign('nkdstatus')
                ->references('nkdstatus')->on('m_status_users')
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
        Schema::dropIfExists('m_siswas');
    }
};
