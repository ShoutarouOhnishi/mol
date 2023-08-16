<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInitialTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('app_users', function (Blueprint $table) {
            $table->id();
            $table->string('firebase_uid', 256)->nullable();
            $table->string('name', 15);
            $table->boolean('is_ban')->default(false);
            $table->string('reason_for_ban', 256)->nullable();
            $table->boolean('is_withdraw')->default(false);
            $table->datetime('accessed_at')->nullable()->default(null);
            $table->datetime('created_at');
            $table->datetime('updated_at');
            $table->datetime('deleted_at')->nullable();

            $table->unique('firebase_uid');
        });

        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->datetime('ended_at')->nullable();
            $table->datetime('created_at')->nullable();
            $table->datetime('updated_at')->nullable();
        });

        Schema::create('room_members', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('room_id');
            $table->unsignedBigInteger('user_id');
            $table->integer('rank')->default(0);
            $table->datetime('created_at')->nullable();
            $table->datetime('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('app_users');
        Schema::dropIfExists('rooms');
        Schema::dropIfExists('room_members');
    }
}
