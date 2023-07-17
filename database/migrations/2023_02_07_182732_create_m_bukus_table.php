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
        Schema::create('m_bukus', function (Blueprint $table) {
            $table->bigIncrements('nid');
            $table->string('nkdbuku')->unique();
            $table->string('nnmbuku');
            $table->string('nterbit');
            $table->string('npenerbit');
            $table->double('nharga', 11, 2)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('m_bukus');
    }
};
