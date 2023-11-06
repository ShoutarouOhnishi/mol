import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/state/splash_page_state.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashPageStateNotifierProvider.notifier).initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<List<SplashPageUiEvent>>(
      splashPageStateNotifierProvider.select((s) => s.events),
      (_, events) {
        final event = events.firstOrNull;
        if (event == null) return;
        event.when(
          onCompleteNotLogin: () {
            Navigator.of(context).pushReplacementNamed(
              AppRouter.initial,
            );
          },
          onCompleteLogin: () {
            Navigator.of(context).pushReplacementNamed(
              AppRouter.matchMake,
            );
          },
          onError: (e) async {
            // FIXME: 暫定的にinitialへ遷移。エラーWidget作成次第、実装しなおす
            Navigator.of(context).pushReplacementNamed(
              AppRouter.initial,
            );
          },
        );
        ref.read(splashPageStateNotifierProvider.notifier).consumeEvent(event);
      },
    );
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Splash'),
        // child: Assets.logo.logo.image(width: 192, height: 32), // FIXME: 実装
      ),
    );
  }
}
