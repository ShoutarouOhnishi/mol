<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\AppUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AccountController extends Controller
{
    public function store(Request $request): void
    {
        $validated = Validator::make($request->all(), [
            'name' => 'required|max:15',
            'udid' => 'required',
            'firebase_uid' => 'required|unique:app_users,firebase_uid',
        ])->validate();

        AppUser::create($validated);
    }
}
