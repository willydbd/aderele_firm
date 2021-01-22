<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'App\Http\Controllers\PagesController@landing');
Route::get('/blogposts', 'App\Http\Controllers\PagesController@blogposts')->name('blogposts');
Route::get('/blogpost/{id}', 'App\Http\Controllers\PagesController@blogpost')->name('blogpost');
Route::get('/blogcat/{id}', 'App\Http\Controllers\PagesController@blogcat')->name('blogcat');
Route::get('/contact', 'App\Http\Controllers\PagesController@contact')->name('contact');
Route::get('/feedback', 'App\Http\Controllers\PagesController@feedback')->name('feedback');
Route::get('/ourpractices', 'App\Http\Controllers\PagesController@ourpractices')->name('ourpractices');
Route::get('/practice/{id}', 'App\Http\Controllers\PagesController@practice')->name('practice');


Auth::routes();
// Auth::routes(['register' => false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::resource('blogs', App\Http\Controllers\BlogController::class);

Route::resource('categories', App\Http\Controllers\CategoryController::class);

Route::resource('clients', App\Http\Controllers\ClientController::class);

Route::resource('tags', App\Http\Controllers\TagController::class);

Route::resource('practices', App\Http\Controllers\PracticeController::class);