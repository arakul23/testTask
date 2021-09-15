<?php

use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\PostController;
use App\Http\Controllers\API\CommentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/users', [UserController::class, 'index']);
Route::get('/users/{user}', [UserController::class, 'show']);
Route::get('/posts', [PostController::class, 'index']);
Route::get('/posts/{post}', [PostController::class, 'show']);
Route::get('/posts/{post}/comments', [CommentController::class, 'index']);
Route::get('/posts/{post}/comments/{comment}', [CommentController::class, 'show']);

Route::post('/users', [UserController::class, 'store']);
Route::post('/posts', [PostController::class, 'store']);
Route::post('/posts/{post}/comments', [CommentController::class, 'store']);

Route::delete('/users/{user}', [UserController::class, 'delete']);
Route::delete('/posts/{post}', [PostController::class, 'delete']);
Route::delete('/posts/{post}/comments/{comment}', [CommentController::class, 'delete']);

Route::patch('/users/{user}', [UserController::class, 'update']);
Route::patch('/posts/{post}', [PostController::class, 'update']);
Route::patch('/posts/{post}/comments/{comment}', [CommentController::class, 'update']);
