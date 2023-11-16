<?php

use App\Http\Controllers\Api\V1\AppUserController;
use App\Http\Controllers\Api\V1\AuthController;
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

Route::middleware('firebase.verifyToken')->group(function (Router $router) {
    $router->apiResource('user', AppUserController::class)
        ->only(['store']);
    $router->apiResource('login', AuthController::class)
        ->only(['store']);
});

Route::group(['middleware' => ['auth:api', 'scopes:app-user-scope']], function (Router $router) {
});
