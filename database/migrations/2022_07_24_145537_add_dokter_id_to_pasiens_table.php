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
        Schema::table('pasiens', function (Blueprint $table) {
            $table->foreignId('dokter_id')->default(1);
            $table->text('diagnosa')->default('<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pasiens', function (Blueprint $table) {
            $table->dropColumn('dokter_id', 'diagnosa');
        });
    }
};
