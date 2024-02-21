<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\InvestorController;
use App\Http\Controllers\LocalCompanyController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect()->route('investors.index');
});


Route::group(['middleware' => ['role:admin']], function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');
});

Route::group(['middleware' => ['role:admin', 'role:moderator', 'auth']], function () {
    Route::resource('investors', InvestorController::class)->except(['index', 'show']);
    Route::resource('projects', ProjectController::class)->except(['index', 'show']);
    Route::resource('companies', LocalCompanyController::class)->except(['index', 'show']);
    Route::resource('entrepreneurs', LocalCompanyController::class)->except(['index', 'show']);
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::resource('investors', InvestorController::class)->only(['index', 'show']);
    Route::resource('projects', ProjectController::class)->only(['index', 'show']);
    Route::resource('companies', LocalCompanyController::class)->only(['index', 'show']);
    Route::resource('entrepreneurs', LocalCompanyController::class)->only(['index', 'show']);
});


require __DIR__ . '/auth.php';
