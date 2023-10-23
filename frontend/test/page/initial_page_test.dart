import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/constants/app.dart';
import 'package:frontend/main.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/presentation/notifier/initial_page_state_notifier.dart';
import 'package:frontend/presentation/notifier/splash_page_state_notifier.dart';
import 'package:frontend/presentation/page/initial_page.dart';
import 'package:frontend/presentation/page/match_make_page.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import './initial_page_test.mocks.dart';

class MockApiClient extends Mock implements ApiClient {}

// MockInitialStateNotifierに設定するようのAuthStateNotifier
// 画面描画時とテストコードでの状態変更時に同じインスタンスを使うため
class MockAuthStateNotifier extends AuthStateNotifier with Mock {
  MockAuthStateNotifier()
      : super(MockFirebaseAuthService(), MockAccountRepository(),
            MockApiClient());
}

/// InitialStateNotifierをモッキング
/// InitialStateNotifierでは_authStateNotifierがprivateで定義されているため、
/// MockInitialStateNotifierで新たにauthStateNotifierを定義する
/// 一旦、`extends InitialStateNotifier`でInitialStateNotifierを継承してモッククラスを定義しているが、
/// InitialStateNotifierに依存関係が増え、複雑になってきた場合は、`extends StateNotifier with Mock implements InitialStateNotifier`で、
/// InitialStateNotifierをインターフェイス化しつつ、クラスを新しく定義することで対応する
class MockInitialStateNotifier extends InitialPageStateNotifier {
  final AuthStateNotifier authStateNotifier;
  final AuthState authState;
  MockInitialStateNotifier(
      this.authStateNotifier, this.authState, InitialPageState state)
      : super(MockAccountRepository(), MockFirebaseAuthService(),
            authStateNotifier);

  // ローディングをtrueに変更するテスト用メソッド
  Future<void> changeLoading() async {
    state = state.copyWith(isLoading: true);
  }

  @override
  Future<void> createAnounymouslyUser() async {
    authStateNotifier.state = authState;
  }
}

class MockSplashStateNotifier extends SplashPageStateNotifier {
  MockSplashStateNotifier(AuthStateNotifier authStateNotifier)
      : super(authStateNotifier);

  // テスト用にinitializeメソッドをオーバーライド
  // 常に未ログイン状態を返す
  @override
  Future<void> initialize() async {
    state = state.copyWith(
      events: state.events + [const UiEvent.onCompleteNotLogin()],
    );
  }
}

@GenerateNiceMocks(
    [MockSpec<FirebaseAuthService>(), MockSpec<AccountRepository>()])
void main() {
  setUp(() async {
    // Firebaseのモッキング
    setupFirebaseCoreMocks();
    // Firebaseモッキング後に初期化
    await Firebase.initializeApp();
  });

  testWidgets('静的ウィジェットの確認', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: InitialPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // AppBarが表示されていることを確認
    expect(find.byType(AppBar), findsOneWidget);

    // テキストフィールドが表示されていることを確認
    expect(find.byType(TextField), findsOneWidget);

    // ボタンが表示されていることを確認
    expect(find.byType(ElevatedButton), findsOneWidget);

    // ボタンをタップ前の初期状態の確認
    // ボタンテキストが"ゲストではじめる"であることを確認
    expect(find.text('ゲストではじめる'), findsOneWidget);
  });

  testWidgets('isLoading: trueの場合にLoadingウィジェットが表示される',
      (WidgetTester tester) async {
    // デフォルトの状態を持ったMockInitialStateNotifierを作成
    final mockStateNotifier = MockInitialStateNotifier(MockAuthStateNotifier(),
        const AuthState.initial(), const InitialPageState());
    final mockSplashStateNotifier = MockSplashStateNotifier(AuthStateNotifier(
        MockFirebaseAuthService(), MockAccountRepository(), MockApiClient()));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initialPageStateNotifierProvider
              .overrideWith((ref) => mockStateNotifier),
          splashPageStateNotifierProvider
              .overrideWith((ref) => mockSplashStateNotifier),
        ],
        child: const MaterialApp(
          home: MyApp(),
        ),
      ),
    );

    // SplashViewからInitialViewへの遷移が完了するまで待つ
    await tester.pumpAndSettle();

    // isLoadingをtrueに変更
    await mockStateNotifier.changeLoading();

    // ローディング表示処理が完了するまで固定秒待機
    await tester.pump(const Duration(
        microseconds:
            300)); // pumpAndSettleだとローディングを非表示にするまで終わらず、タイムアウトしてしまうため、固定秒数で待つ

    // CircularProgressIndicatorの存在を確認
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('AuthStateがauthenticatedに変わった際にMatchMakeViewに遷移する',
      (WidgetTester tester) async {
    final mockAuthStateNotifier = MockAuthStateNotifier();
    final mockInitialStateNotifier = MockInitialStateNotifier(
      mockAuthStateNotifier,
      const AuthState.authenticated('test_token'),
      const InitialPageState(),
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authStateProvider.overrideWith(
            (ref) => mockAuthStateNotifier,
          ),
          initialPageStateNotifierProvider
              .overrideWith((ref) => mockInitialStateNotifier),
        ],
        child: const MaterialApp(
          home: InitialPage(),
          onGenerateRoute: AppRouter.generateRoute, // 画面遷移をテストするため、ルートを設定
        ),
      ),
    );

    // ボタンをタップ
    await tester.tap(find.byType(ElevatedButton));
    // 非同期処理の完了を待つ
    await tester.pumpAndSettle();
    // MatchMakeViewに画面遷移したことを確認
    expect(find.byType(MatchMakePage), findsOneWidget);
  });

  testWidgets('AuthStateがauthenticated以外に変わった際に画面遷移が行われない',
      (WidgetTester tester) async {
    final mockAuthStateNotifier = MockAuthStateNotifier();
    final mockInitialStateNotifier = MockInitialStateNotifier(
      mockAuthStateNotifier,
      const AuthState.unauthenticated(),
      const InitialPageState(),
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authStateProvider.overrideWith(
            (ref) => mockAuthStateNotifier,
          ),
          initialPageStateNotifierProvider
              .overrideWith((ref) => mockInitialStateNotifier),
        ],
        child: const MaterialApp(
          home: InitialPage(),
          onGenerateRoute: AppRouter.generateRoute, // 画面遷移をテストするため、ルートを設定
        ),
      ),
    );

    // ボタンをタップ
    await tester.tap(find.byType(ElevatedButton));
    // 非同期処理の完了を待つ
    await tester.pumpAndSettle();
    // InitialViewが表示されていることを確認
    expect(find.byType(InitialPage), findsOneWidget);
    // MatchMakeViewに画面遷移していないことを確認
    expect(find.byType(MatchMakePage), findsNothing);
  });
}