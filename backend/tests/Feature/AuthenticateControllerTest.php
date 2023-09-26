<?php

namespace Tests\Feature;

use App\Http\Middleware\FirebaseTokenIsValid;
use App\Models\AppUser;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Spectator\Spectator;
use Symfony\Component\HttpFoundation\Response;
use Tests\TestCase;

class AuthenticateControllerTest extends TestCase
{

    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        Spectator::using('openapi.yml');

        $this->artisan('passport:install');
    }

    public function testStore200()
    {
        $this->mockFirebaseTokenIsValid(AppUser::factory()->create()->firebase_uid);

        $response = $this->postJson('/api/v1/authenticate');
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_OK);
    }

    public function testStore401()
    {

        $this->mockFirebaseTokenIsValid('fakeFirebaseUid');

        $response = $this->postJson('/api/v1/authenticate');
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_UNAUTHORIZED);
    }

    public function testStore403()
    {

        $this->mockFirebaseTokenIsValid(AppUser::factory(['is_withdraw' => true])->create()->firebase_uid);

        $response = $this->postJson('/api/v1/authenticate');
        $response->assertValidRequest()->assertValidResponse(Response::HTTP_FORBIDDEN);
    }

    private function mockFirebaseTokenIsValid(String $firebaseUid)
    {
        // Mock FirebaseTokenIsValid middleware
        $fakeFirebaseUid = $firebaseUid;
        $firebaseMock = $this->mock(FirebaseTokenIsValid::class, function ($firebaseMock) use ($fakeFirebaseUid) {
            $firebaseMock->shouldReceive('handle')->andReturnUsing(function ($request, $next) use ($fakeFirebaseUid) {
                $request->merge(['firebase_uid' => $fakeFirebaseUid]);
                return $next($request);
            });
        });

        $this->app->instance(FirebaseTokenIsValid::class, $firebaseMock);
    }
}
