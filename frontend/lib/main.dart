import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/constant/app.dart';
import 'package:stack_trace/stack_trace.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // Webの場合の初期化
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: String.fromEnvironment('firebaseWebApiKey'),
        authDomain: String.fromEnvironment('firebaseWebAuthDomain'),
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

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is Trace) return stack.vmTrace;
    if (stack is Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      initialRoute: AppRouter.splash,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
