<?php

use App\Http\Controllers\Api\V1\AnnouncementController;
use App\Http\Controllers\Api\V1\AnotherUserDraftController;
use App\Http\Controllers\Api\V1\BannerController;
use App\Http\Controllers\Api\V1\DraftChoiceController;
use App\Http\Controllers\Api\V1\DraftChoiceScoreController;
use App\Http\Controllers\Api\V1\DraftQuestionController;
use App\Http\Controllers\Api\V1\FriendRequestController;
use App\Http\Controllers\Api\V1\GameMonthlyRewardController;
use App\Http\Controllers\Api\V1\GamePeriodicRewardController;
use App\Http\Controllers\Api\V1\GameRankingController;
use App\Http\Controllers\Api\V1\PastQuizController;
use App\Http\Controllers\Api\V1\PastQuizQuestionController;
use App\Http\Controllers\Api\V1\RankDraftController;
use App\Http\Controllers\Api\V1\UserConfigs\FavoriteGameGenreController;
use App\Http\Controllers\Api\V1\UserController;
use App\Http\Controllers\Api\V1\UserDraftController;
use App\Http\Controllers\Api\V1\UserFriendController;
use App\Http\Controllers\Api\V1\UserGameAnalyticsController;
use App\Http\Controllers\Api\V1\UserGameSummaryController;
use App\Http\Controllers\Api\V1\UserPastQuizController;
use App\Http\Controllers\Api\V1\UserStatusController;
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
    $router->apiResource('user', AccountController::class)
        ->only(['store']);
});

Route::group(['middleware' => ['auth:api', 'scopes:app-user-scope']], function (Router $router) {

});
