<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
//old
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PostController;
//new
use App\Http\Controllers\UserPostsController;
use App\Http\Controllers\LikedPostsController;
use App\Http\Controllers\UserNotificationsController;
use App\Http\Controllers\UserFollowingsController;
use App\Http\Controllers\UserFollowersController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\MediaController;
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
    /*
    if(auth()->user()){
        auth()->user()->assignRole('admin');
    }
    */
    return Inertia::render('Landing', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
})->name('landing');


Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/home', [HomeController::class, 'show'])->name('home');

    
    
    Route::get('/dashboard', function () {return Inertia::render('Dashboard');})->name('dashboard');
    Route::post('posts/{post}/like', [LikedPostsController::class, 'toggle']);
    Route::get('/notifications', [UserNotificationsController::class, 'index'])->name('notifications');

    Route::get('/{user:username}', [UserPostsController::class, 'index'])->name('userPosts');

    Route::get('/{user:username}/followings', [UserFollowingsController::class, 'index'])->name('userFollowings');
    Route::post('/{user:username}/followings/{id}', [UserFollowingsController::class, 'store'])->name('userFollowings.store');
    Route::delete('/{user:username}/followings/{id}', [UserFollowingsController::class, 'destroy'])->name('userFollowings.destroy');
    
    Route::get('/{user:username}/followers', [UserFollowersController::class, 'index'])->name('userFollowers');
    
    Route::post('/media', [MediaController::class, 'store'])->name('media.store');
    Route::delete('/media/{media}', [MediaController::class, 'destroy'])->name('media.destroy');

    Route::post('/posts', [PostsController::class, 'store'])->name('posts.store');
    Route::delete('/posts/{post}', [PostsController::class, 'destroy'])->name('posts.destroy');
});

