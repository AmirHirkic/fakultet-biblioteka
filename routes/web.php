<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\TypeController;

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

/* Route::get('/', function () {
    return view('welcome');
}); */

Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return view('dashboard');
})->name('dashboard');


/* Route::middleware(['auth:sanctum', 'verified'])->get('/books', function () {
    return view('books.index');
})->name('books'); */

Route::middleware(['auth:sanctum', 'verified'])->get('books', [BookController::class,'index'])->name('books');
Route::middleware(['auth:sanctum', 'verified'])->get('upiti', [BookController::class,'baza'])->name('upiti');
Route::middleware(['auth:sanctum', 'verified'])->get('add_book', [BookController::class, 'create'])->name('add_book');
Route::middleware(['auth:sanctum', 'verified'])->post('store_book', [BookController::class, 'store'])->name('store_book');
Route::middleware(['auth:sanctum', 'verified'])->post('delete_book', [BookController::class, 'delete'])->name('delete_book');
Route::middleware(['auth:sanctum', 'verified'])->post('edit_book', [BookController::class, 'edit'])->name('edit_book');
Route::middleware(['auth:sanctum', 'verified'])->post('update_book', [BookController::class, 'update'])->name('update_book');

/* Route::middleware(['auth:sanctum', 'verified'])->get('/authors', function () {
    return view('authors.index');
})->name('authors'); */ 

Route::middleware(['auth:sanctum', 'verified'])->get('authors', [AuthorController::class,'index'])->name('authors');

Route::middleware(['auth:sanctum', 'verified'])->get('/students', function () {
    return view('students.index');
})->name('students');
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
