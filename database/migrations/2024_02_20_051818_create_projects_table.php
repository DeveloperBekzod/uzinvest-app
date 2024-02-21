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
            $table->unsignedInteger('industry_id')->nullable();
            $table->foreign('industry_id')->references('id')->on('industries');
            $table->unsignedInteger('region_id')->nullable();
            $table->foreign('region_id')->references('id')->on('regions');
            $table->unsignedInteger('investor_id');
            $table->foreign('investor_id')->references('id')->on('investors');
            $table->unsignedInteger('local_company_id');
            $table->foreign('local_company_id')->references('id')->on('local_companies');
            $table->unsignedInteger('official_people_id');
            $table->foreign('official_people_id')->references('id')->on('official_people');
            $table->string('name_uz')->unique();
            $table->string('name_ru')->unique();
            $table->string('slug_uz');
            $table->string('slug_ru');
            $table->unsignedBigInteger('amount');
            $table->boolean('is_active')->default(false);
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
