import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/view_models/splash_view_model.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashViewStateProvider.notifier).initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<List<UiEvent>>(
      splashViewStateProvider.select((s) => s.events),
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
        ref.read(splashViewStateProvider.notifier).consumeEvent(event);
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
