<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Http\Request;
use InvalidArgumentException;
use Kreait\Firebase\Exception\Auth\FailedToVerifyToken;
use Kreait\Firebase\Exception\Auth\RevokedIdToken;
use Kreait\Firebase\Exception\Auth\UserNotFound;
use Kreait\Firebase\Exception\AuthException;
use Kreait\Firebase\Exception\FirebaseException;
use Kreait\Laravel\Firebase\Facades\Firebase;

class FirebaseTokenIsValid
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse) $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        try {
            $idToken = $request->bearerToken();
            if (is_null($idToken)) {
                throw new AuthenticationException('The token is required.');
            }
            $resultIdToken = Firebase::auth()->verifyIdToken($idToken, true);
            $uid = $resultIdToken->claims()->get('sub');
            $firebase_providers = $resultIdToken->claims()->get('firebase');
        } catch (InvalidArgumentException $e) {
            throw new AuthorizationException('The token could not be parsed:' . $e->getMessage());
        } catch (RevokedIdToken $e) {
            throw new AuthorizationException('The token has been revoked:' . $e->getMessage());
        } catch (FailedToVerifyToken $e) {
            throw new AuthorizationException('The token is invalid: ' . $e->getMessage());
        } catch (UserNotFound $e) {
            throw new AuthorizationException('The user is not found:' . $e->getMessage());
        } catch (AuthException $e) {
            throw new AuthorizationException('' . $e->getMessage());
        } catch (FirebaseException $e) {
            throw new AuthorizationException('' . $e->getMessage());
        }

        $request->merge(['firebase_uid' => $uid, 'firebase_providers' => $firebase_providers]);

        return $next($request);
    }
}
