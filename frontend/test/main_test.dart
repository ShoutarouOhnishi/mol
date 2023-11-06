import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:frontend/main.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/notifier/splash_page_state_notifier.dart';
import 'package:mockito/annotations.dart';
import 'main_test.mocks.dart';

@GenerateMocks([SplashPageStateNotifier])
void main() {
  setUp(() async {
    // Firebaseのモッキング
    setupFirebaseCoreMocks();
    // Firebaseモッキング後に初期化
    await Firebase.initializeApp();
  });

  testWidgets('スプラッシュスクリーンが正常に表示されている', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          splashPageStateNotifierProvider.overrideWith((ref) =>
              MockSplashPageStateNotifier()) // initializeメソッドでの状態変化による画面遷移を防ぐため、モックを使用
        ],
        child: const MyApp(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Splash'), findsOneWidget);
  });
}
