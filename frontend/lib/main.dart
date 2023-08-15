import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/views/match_make_page.dart';

import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // Webの場合の初期化
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: String.fromEnvironment('firebaseWebApiKey'),
        authDomain: String.fromEnvironment('firebaseWebAuthDomain'),
        databaseURL: String.fromEnvironment('firebaseWebDatabaseURL'),
        projectId: String.fromEnvironment('firebaseWebProjectId'),
        storageBucket: String.fromEnvironment('firebaseWebStorageBucket'),
        messagingSenderId:
            String.fromEnvironment('firebaseWebMessagingSenderId'),
        appId: String.fromEnvironment('firebaseWebAppId'),
        measurementId: String.fromEnvironment('firebaseWebMeasurementId'),
      ),
    );
  } else {
    // iOS/Androidの場合の初期化
    await Firebase.initializeApp();
  }

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.read(authServiceProvider);
    // アプリ起動時に匿名認証
    auth.signInAnonymously();

    return MaterialApp(
      title: 'Room App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MatchMakePage(),
    );
  }
}
