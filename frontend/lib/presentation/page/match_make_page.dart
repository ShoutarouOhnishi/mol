import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/presentation/notifier/match_make_page_state_notifier.dart';

class MatchMakePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchMakeState = ref.watch(matchMakePageStateNotifierProvider);
    final viewModel = ref.watch(matchMakePageStateNotifierProvider.notifier);
    final firebaseUserAsyncValue = ref.watch(firebaseUserProvider);

    return Scaffold(
      appBar: AppBar(title: Text('対戦マッチング')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 対戦相手を探すボタン
            firebaseUserAsyncValue.when(
              data: (user) => ElevatedButton(
                onPressed: () =>
                    viewModel.searchForOpponent(context, user!.uid), // UIDを渡す
                child: Text('対戦相手を探す'),
              ),
              loading: () => const CircularProgressIndicator(),
              error: (_, __) => const Center(child: Text('An error occurred')),
            ),
            // ローディング表示
            if (matchMakeState is MatchMakeLoading) CircularProgressIndicator(),
            // 待機中の表示
            if (matchMakeState is MatchMakeWaiting) Text('待機中...'),
            // エラーメッセージ
            if (matchMakeState is MatchMakeError) Text(matchMakeState.message),
          ],
        ),
      ),
    );
  }
}
