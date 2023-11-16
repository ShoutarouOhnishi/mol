<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\AppUser;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AppUserController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validated = Validator::make($request->all(), [
            'name' => 'required|max:15',
            'firebase_uid' => 'required|unique:app_users,firebase_uid',
        ])->validate();

        $user = AppUser::create($validated);

        return response()->json([
            'token' => $user->createToken($user->id, ['app-user-scope'])->accessToken,
            'user' => $user->disclosed()
        ]);
    }
}
