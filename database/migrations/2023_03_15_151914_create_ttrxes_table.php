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
        Schema::create('ttrxes', function (Blueprint $table) {
            $table->bigInteger('nnotrx',false)->primary();
            $table->bigInteger('ntgltrx');
            $table->string('nnis')->nullable();
            $table->text('ndeskripsi')->nullable();
            $table->double('nnominal', 11, 2)->default(0);
            $table->bigInteger('nkdtype');
            $table->string('username_i')->nullable();
            $table->timestamps();

            $table->foreign('nnis')
                ->references('nnis')->on('m_siswas')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdtype')
                    ->references('nkdtype')->on('typettrxes')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');

            $table->foreign('username_i')
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
        Schema::dropIfExists('ttrxes');
    }
};
