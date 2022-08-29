<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GisController;
use App\Http\Controllers\RlbController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\DashboardGisController;
use App\Http\Controllers\DecisiontreeController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\KorespondensiController;
use App\Http\Controllers\DashboardDokterController;
use App\Http\Controllers\DashboardPasienController;
use App\Http\Controllers\DashboardCategoryController;
use App\Http\Controllers\DashboardKecamatanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Guest, Users, Admins

Route::get('/', [AboutController::class, 'index']);

Route::get('/posts', [PostController::class, 'index']);

Route::get('posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', [CategoriesController::class, 'index']);

Route::get('/gis', [GisController::class, 'index']);

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');

Route::post('/login', [LoginController::class, 'authenticate']);

Route::post('/register', [RegisterController::class, 'store']);

Route::post('/logout', [LoginController::class, 'logout']);

// Users, Admins

Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth');

Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::get('/dashboard/giss', [DashboardGisController::class, 'index'])->middleware('auth');

Route::get('/dashboard/post/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');

// Admins

Route::resource('/dashboard/pasiens', DashboardPasienController::class)->except('show')->middleware('admin');

Route::resource('/dashboard/dokters', DashboardDokterController::class)->except('show')->middleware('admin');

Route::resource('/dashboard/kecamatans', DashboardKecamatanController::class)->except('show')->middleware('admin');

Route::resource('/dashboard/categories', DashboardCategoryController::class)->except('show')->middleware('admin');

Route::resource('/dashboard/decisiontrees', DecisiontreeController::class)->except('show')->middleware('admin');

Route::get('/dashboard/category/checkSlug', [DashboardCategoryController::class, 'checkSlug'])->middleware('admin');

Route::get('/dashboard/rlbs', [RlbController::class, 'index'])->middleware('admin');

Route::get('/dashboard/korespondensis', [KorespondensiController::class, 'index'])->middleware('admin');
