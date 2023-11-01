// Mocks generated by Mockito 5.4.2 from annotations
// in frontend/test/page/initial_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:frontend/application/usecase/create_anonymously_user_usecase_impl.dart'
    as _i5;
import 'package:frontend/application/usecase/get_user_auth_state_usecase_impl.dart'
    as _i3;
import 'package:frontend/domain/repository/account_repository.dart' as _i8;
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart'
    as _i6;
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart'
    as _i9;
import 'package:frontend/presentation/notifier/auth_state_notifier.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAuthState_0 extends _i1.SmartFake implements _i2.AuthState {
  _FakeAuthState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetUserAuthStateUseCaseImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetUserAuthStateUseCaseImpl extends _i1.Mock
    implements _i3.GetUserAuthStateUseCaseImpl {
  MockGetUserAuthStateUseCaseImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AuthState> call() => (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue: _i4.Future<_i2.AuthState>.value(_FakeAuthState_0(
          this,
          Invocation.method(
            #call,
            [],
          ),
        )),
      ) as _i4.Future<_i2.AuthState>);
}

/// A class which mocks [CreateAnonymouslyUserUseCaseImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateAnonymouslyUserUseCaseImpl extends _i1.Mock
    implements _i5.CreateAnonymouslyUserUseCaseImpl {
  MockCreateAnonymouslyUserUseCaseImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AuthState> call(String? userName) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [userName],
        ),
        returnValue: _i4.Future<_i2.AuthState>.value(_FakeAuthState_0(
          this,
          Invocation.method(
            #call,
            [userName],
          ),
        )),
      ) as _i4.Future<_i2.AuthState>);
}

/// A class which mocks [FirebaseAuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseAuthService extends _i1.Mock
    implements _i6.FirebaseAuthService {
  @override
  _i4.Stream<_i7.User?> get userChanges => (super.noSuchMethod(
        Invocation.getter(#userChanges),
        returnValue: _i4.Stream<_i7.User?>.empty(),
        returnValueForMissingStub: _i4.Stream<_i7.User?>.empty(),
      ) as _i4.Stream<_i7.User?>);
  @override
  _i4.Future<_i7.User?> signInAnonymously() => (super.noSuchMethod(
        Invocation.method(
          #signInAnonymously,
          [],
        ),
        returnValue: _i4.Future<_i7.User?>.value(),
        returnValueForMissingStub: _i4.Future<_i7.User?>.value(),
      ) as _i4.Future<_i7.User?>);
  @override
  _i4.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [AccountRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccountRepository extends _i1.Mock implements _i8.AccountRepository {
  @override
  _i4.Future<_i9.CreateUserResponse?> createUser(
          _i9.CreateUserRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUser,
          [request],
        ),
        returnValue: _i4.Future<_i9.CreateUserResponse?>.value(),
        returnValueForMissingStub: _i4.Future<_i9.CreateUserResponse?>.value(),
      ) as _i4.Future<_i9.CreateUserResponse?>);
  @override
  _i4.Future<_i9.LoginResponse?> login() => (super.noSuchMethod(
        Invocation.method(
          #login,
          [],
        ),
        returnValue: _i4.Future<_i9.LoginResponse?>.value(),
        returnValueForMissingStub: _i4.Future<_i9.LoginResponse?>.value(),
      ) as _i4.Future<_i9.LoginResponse?>);
}
