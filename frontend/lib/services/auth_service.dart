import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final userProvider = StreamProvider<User?>((ref) {
  return ref.read(authServiceProvider).userChanges;
});

class AuthService {
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

  // ユーザーの変更を監視するストリーム
  Stream<User?> get userChanges => _auth.authStateChanges();
}
