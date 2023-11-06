import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/component/progress.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/page/room_page.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';

class MatchMakePage extends ConsumerWidget {
  const MatchMakePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<MatchMakeState>(
      matchMakePageStateNotifierProvider,
      (_, newState) {
        newState.maybeWhen(
          matched: (roomId) {
            debugPrint('matched');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RoomPage(roomId: roomId),
              ),
            );
          },
          orElse: () {},
        );
      },
    );

    final provider = matchMakePageStateNotifierProvider;
    final state = ref.watch(matchMakePageStateNotifierProvider);
    final notifier = ref.watch(provider.notifier);
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('対戦マッチング')),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 対戦相手を探すボタン
                ElevatedButton(
                  onPressed: () => notifier.searchForOpponent(
                      context, authState.token), // FIXME: ユーザーID等のユニークキーを渡す
                  child: const Text('対戦相手を探す'),
                ),

                if (state is MatchMakeLoading) const Progress(),
                if (state is Error)
                  const Text('エラーが発生しました。\nしばらく経ってからもう一度お試しください。'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
