<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\AppUser;
use App\Models\Room;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RoomController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $validated = Validator::make($request->all(), [
            'room_id' => 'required|string|max:30',
            'app_user_id' => 'required|exists:app_users,id',
        ])->validate();

        $room = Room::updateOrCreate(
            ['id' => $validated['room_id']],
            ['updated_at' => now()]
        );
        $room->members()->syncWithoutDetaching([$validated['app_user_id']]);

        return response()->json(null, 200);
    }

    public function show(Request $request, Room $room): JsonResponse
    {
        return response()->json([
            'members' => $room->members()->disclosed()->get(),
        ]);
    }
}
