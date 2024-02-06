import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/constant/match.dart';
import 'package:frontend/presentation/component/progress.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/page/room_page.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';
import 'package:frontend/presentation/style/app_style.dart';

class MatchMakePage extends ConsumerWidget {
  const MatchMakePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = matchMakePageStateNotifierProvider;
    final state = ref.watch(matchMakePageStateNotifierProvider);
    final notifier = ref.watch(provider.notifier);
    final authState = ref.watch(authStateProvider);

    ref.listen<MatchMakeState>(
      matchMakePageStateNotifierProvider,
      (_, newState) {
        newState.maybeWhen(
          matched: (roomId) {
            debugPrint('matched');
            notifier.createRoom(roomId);
            Navigator.of(context).pushNamed(AppRouter.room, arguments: roomId);
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text(kTitleTxt, style: AppStyles.headline)),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 対戦相手を探すボタン
                ElevatedButton(
                  onPressed: () => notifier.searchForOpponent(
                      context, authState.user!.id.toString()),
                  style: AppStyles.primaryButton,
                  child:
                      const Text(kFindAnOpponentBtnTxt, style: AppStyles.body),
                ),

                if (state is Error)
                  const Text(kMatchErrorText, style: AppStyles.caption),
              ],
            ),
          ),
          if (state is MatchMakeLoading) const Progress(),
        ],
      ),
    );
  }
}
