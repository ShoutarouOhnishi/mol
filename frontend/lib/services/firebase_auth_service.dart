import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseAuthServiceProvider =
    Provider<FirebaseAuthService>((ref) => FirebaseAuthService());

final firebaseUserProvider = StreamProvider<User?>((ref) {
  return ref.read(firebaseAuthServiceProvider).userChanges;
});

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // 現在のユーザーを取得する
  User? get user => _auth.currentUser;

  // 匿名認証を行うメソッド
  Future<User?> signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      return result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // サインアウトするメソッド
  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return;
    }
  }

  User? get currentUser => _auth.currentUser;

  // ユーザーの変更を監視するストリーム
  Stream<User?> get userChanges => _auth.authStateChanges();
}
