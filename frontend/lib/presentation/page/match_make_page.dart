import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/presentation/component/progress.dart';
import 'package:frontend/presentation/notifier/match_make_page_state_notifier.dart';
import 'package:frontend/presentation/page/room_page.dart';

class MatchMakePage extends ConsumerWidget {
  const MatchMakePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<MatchMakeState>(
      matchMakePageStateNotifierProvider,
      (_, newState) {
        newState.maybeWhen(
          loading: () {
            debugPrint('Loading');
          },
          orElse: () {
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

    final provider = matchMakePageStateNotifierProvider;
    final state = ref.watch(matchMakePageStateNotifierProvider);
    final notifier = ref.watch(provider.notifier);
    final firebaseUserAsyncValue = ref.watch(firebaseUserProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('対戦マッチング')),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 対戦相手を探すボタン
                firebaseUserAsyncValue.when(
                  data: (user) => ElevatedButton(
                    onPressed: () => notifier.searchForOpponent(
                        context, user!.uid), // UIDを渡す
                    child: const Text('対戦相手を探す'),
                  ),
                  loading: () => const Progress(),
                  error: (_, __) =>
                      const Center(child: Text('An error occurred')),
                ),
                // エラーメッセージ
                if (state is MatchMakeError) Text(state.message),
              ],
            ),
          ),
          if (state is MatchMakeLoading) const Progress(),
        ],
      ),
    );
  }
}
