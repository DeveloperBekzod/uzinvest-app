<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->integer('industry_id');
            $table->integer('region_id');
            $table->integer('investor_id');
            $table->integer('local_company_id');
            $table->integer('official_people_id');
            $table->string('name_uz')->unique();
            $table->string('name_ru')->unique()->nullable();
            $table->string('slug_uz')->nullable();
            $table->string('slug_ru')->nullable();
            $table->integer('amount');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('projects');
    }
};
