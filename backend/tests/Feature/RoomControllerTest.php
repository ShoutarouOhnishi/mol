<?php

namespace Tests\Feature;

use App\Http\Middleware\FirebaseTokenIsValid;
use App\Models\AppUser;
use App\Models\Room;
use Database\Seeders\AppUserSeeder;
use Database\Seeders\RoomSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Laravel\Passport\Passport;
use Spectator\Spectator;
use Symfony\Component\HttpFoundation\Response;
use Tests\TestCase;

class RoomControllerTest extends TestCase
{

    use RefreshDatabase;
    protected $user;

    protected function setUp(): void
    {
        parent::setUp();
        $this->seed(AppUserSeeder::class);
        $this->seed(RoomSeeder::class);
        Spectator::using('openapi.yml');
        $this->user = Passport::actingAs(
            AppUser::factory()->create(),
            ['app-user-scope']
        );
    }

    public function testStore200()
    {
        $requestData = [
            'room_id' => 'test',
            'app_user_id' => 1,
        ];

        $response = $this->postJson('/api/v1/rooms', $requestData);
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_OK);
    }

    public function testStore422()
    {
        $requestData = [
            'room_id' => 'test',
            'app_user_id' => 999,
        ];

        $response = $this->postJson('/api/v1/rooms', $requestData);
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    public function testShow200()
    {
        $room = Room::first();
        $response = $this->getJson("/api/v1/rooms/{$room->id}/members");
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_OK);
    }
}
