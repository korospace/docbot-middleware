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
        Schema::create('detil_ttrxes', function (Blueprint $table) {
            $table->bigInteger('nnotrx');
            $table->string('nkdakun');
            $table->double('debit', 11, 2)->default(0);
            $table->double('kredit', 11, 2)->default(0);
            $table->timestamps();

            $table->foreign('nnotrx')
                ->references('nnotrx')->on('ttrxes')
                ->onUpdate('cascade')
                ->onDelete('cascade');

            $table->foreign('nkdakun')
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
        Schema::dropIfExists('detil_ttrxes');
    }
};
