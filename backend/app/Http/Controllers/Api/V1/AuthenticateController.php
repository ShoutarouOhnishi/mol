<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\AppUser;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class AuthenticateController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validated = Validator::make($request->all(), [
            'firebase_uid' => 'required',
        ])->validate();

        $user = AppUser::where('firebase_uid', $validated['firebase_uid'])->withTrashed()->first();
        if (!$user) {
            return response()->json([
                'message' => 'このFirebaseUIDでユーザーが存在しません。',
            ], 401, [], JSON_UNESCAPED_UNICODE);
        }
        if ($user->trashed() || $user->is_ban || $user->is_withdraw) {
            return response()->json([
                'message' => 'このユーザーはアクセス権限がありません。',
            ], 403, [], JSON_UNESCAPED_UNICODE);
        }

        $token = DB::transaction(function () use ($user) {
            $user->fill([
                'accessed_at' => Carbon::now(),
            ])->save();
            $token = $user->createToken($user->id, ['app-user-scope']);
            return $token;
        });

        return response()->json([
            'token' => $token->accessToken,
            'user_id' => $user->id,
        ]);
    }
}
