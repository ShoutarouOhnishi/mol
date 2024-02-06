<?php

use App\Http\Controllers\Api\V1\AppUserController;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\RoomController;
use Illuminate\Routing\Router;
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

Route::group(['middleware' => ['firebase.verifyToken']], function (Router $router) {
    $router->apiResource('users', AppUserController::class)
        ->only(['store']);
    $router->apiResource('login', AuthController::class)
        ->only(['store']);
});

Route::group(['middleware' => ['auth:api', 'scopes:app-user-scope']], function (Router $router) {
    $router->apiResource('rooms', RoomController::class)
        ->only(['store']);
    $router->get('rooms/{room}/members', [RoomController::class, 'show']);
});

