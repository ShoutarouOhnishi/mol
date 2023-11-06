import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';

final firebaseAuthServiceProvider =
    Provider<FirebaseAuthService>((ref) => FirebaseAuthService());

final firebaseUserProvider = StreamProvider<User?>((ref) {
  return ref.read(firebaseAuthServiceProvider).userChanges;
});
