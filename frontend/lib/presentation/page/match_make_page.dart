import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/presentation/notifier/match_make_page_state_notifier.dart';
import 'package:frontend/presentation/notifier/progress_state_notifier.dart';
import 'package:frontend/presentation/page/room_page.dart';

class MatchMakePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Function? hideProgress;

    ref.listen<MatchMakeState>(
      matchMakePageStateNotifierProvider,
      (_, newState) {
        newState.maybeWhen(
          loading: () {
            debugPrint('Loading');
            hideProgress?.call();
            hideProgress = ref.read(mainProgressProvider.notifier).show();
          },
          orElse: () {
            hideProgress?.call();
            hideProgress = null;

            newState.when(
              initial: () {
                debugPrint('initial');
              },
              matched: (roomId) {
                debugPrint('matched');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RoomPage(roomId: roomId),
                  ),
                );
              },
              error: (error) {
                debugPrint('error');
                // FIXME: エラー処理
              },
              loading: () {},
            );
          },
        );
      },
    );

    final matchMakeState = ref.watch(matchMakePageStateNotifierProvider);
    final viewModel = ref.watch(matchMakePageStateNotifierProvider.notifier);
    final firebaseUserAsyncValue = ref.watch(firebaseUserProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('対戦マッチング')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 対戦相手を探すボタン
            firebaseUserAsyncValue.when(
              data: (user) => ElevatedButton(
                onPressed: () =>
                    viewModel.searchForOpponent(context, user!.uid), // UIDを渡す
                child: const Text('対戦相手を探す'),
              ),
              loading: () => const CircularProgressIndicator(),
              error: (_, __) => const Center(child: Text('An error occurred')),
            ),
            // エラーメッセージ
            if (matchMakeState is MatchMakeError) Text(matchMakeState.message),
          ],
        ),
      ),
    );
  }
}
