<?php

namespace Tests\Feature;

use App\Http\Middleware\FirebaseTokenIsValid;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Spectator\Spectator;
use Symfony\Component\HttpFoundation\Response;
use Tests\TestCase;

class AppUserControllerTest extends TestCase
{

    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        Spectator::using('openapi.yml');

        $this->artisan('passport:install');

        // Mock FirebaseTokenIsValid middleware
        $fakeFirebaseUid = 'fakeFirebaseUid';

        $firebaseMock = $this->mock(FirebaseTokenIsValid::class, function ($firebaseMock) use ($fakeFirebaseUid) {
            $firebaseMock->shouldReceive('handle')->andReturnUsing(function ($request, $next) use ($fakeFirebaseUid) {
                $request->merge(['firebase_uid' => $fakeFirebaseUid]);
                return $next($request);
            });
        });

        $this->app->instance(FirebaseTokenIsValid::class, $firebaseMock);
    }

    public function testStore200()
    {

        $requestData = [
            'name' => 'ゲスト',
        ];

        $response = $this->postJson('/api/v1/user', $requestData);
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_OK);
    }

    public function testStore422()
    {

        $requestData = [
            'name' => 'ゲストゲストゲストゲストゲストゲスト',
        ];

        $response = $this->postJson('/api/v1/user', $requestData);
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_UNPROCESSABLE_ENTITY);
    }
}
