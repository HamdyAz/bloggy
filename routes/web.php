<?php

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

Auth::routes();
Route::get('/', function () {
    return view('welcome');
});

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::get('/register', function () {
    return view('register');
})->name('register');


Route::middleware('role:admin')->resource('kategori', CategoryController::class);
Route::middleware('role:admin')->resource('penulis', WriterController::class);
Route::middleware('role:admin')->get('/dashboard','HomeController@admin')->name('dashboard');
Route::middleware('role:writer')->get('/home', 'HomeController@writer')->name('panel');