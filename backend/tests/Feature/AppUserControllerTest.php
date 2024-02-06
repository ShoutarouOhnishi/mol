<?php

namespace Tests\Feature;

use App\Http\Middleware\FirebaseTokenIsValid;
use App\Models\AppUser;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Laravel\Passport\Passport;
use Spectator\Spectator;
use Symfony\Component\HttpFoundation\Response;
use Tests\TestCase;

class AppUserControllerTest extends TestCase
{

    use RefreshDatabase;

    public $mockConsoleOutput = false;
    protected $user;

    protected function setUp(): void
    {
        parent::setUp();

        Spectator::using('openapi.yml');

        $this->artisan('passport:install', ['--force' => true, '--no-interaction' => true]);

        $this->user = Passport::actingAs(
            AppUser::factory()->create(),
            ['app-user-scope']
        );

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

        $response = $this->postJson('/api/v1/users', $requestData);
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_OK);
    }

    public function testStore422()
    {

        $requestData = [
            'name' => 'ゲストゲストゲストゲストゲストゲスト',
        ];

        $response = $this->postJson('/api/v1/users', $requestData);
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_UNPROCESSABLE_ENTITY);
    }
}
