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

Route::get('/', function () {
    return redirect()->route('login');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//super admin route group..
Route::group(['middleware'=>['auth','admin']], function (){
    Route::get('admin/dashboard','Admin\DashboardController@index')->name('admin.dashboard');
});

//executive one route group..
Route::group(['middleware'=>['auth','executiveOne']], function (){
    Route::get('executive/one/dashboard','ExecutiveOne\DashboardController@index')->name('executive.one.dashboard');
});

//executive two route group..
Route::group(['middleware'=>['auth','executiveTwo']], function (){
    Route::get('executive/two/dashboard','ExecutiveTwo\DashboardController@index')->name('executive.two.dashboard');
});

//executive three route group..
Route::group(['middleware'=>['auth','executiveThree']], function (){
    Route::get('executive/three/dashboard','ExecutiveThree\DashboardController@index')->name('executive.three.dashboard');
});

//executive four route group..
Route::group(['middleware'=>['auth','executiveFour']], function (){
    Route::get('executive/four/dashboard','ExecutiveFour\DashboardController@index')->name('executive.four.dashboard');
});
