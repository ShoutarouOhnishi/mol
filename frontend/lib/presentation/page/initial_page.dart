import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/constants/app.dart';
import 'package:frontend/constants/initali.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/presentation/notifier/progress_state_notifier.dart';
import 'package:frontend/presentation/notifier/initial_page_state_notifier.dart';

class InitialPage extends ConsumerStatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InitialPageState();
}

class _InitialPageState extends ConsumerState<InitialPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Function? hideProgress;
    final provider = initialPageStateNotifierProvider;
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);

    ref.listen<AuthState>(
      authStateProvider,
      (_, newState) {
        newState.when(initial: () {
          debugPrint('initial');
        }, authenticated: (token) {
          debugPrint('authenticated');
          Navigator.of(context).pushReplacementNamed(AppRouter.matchMake);
        }, unauthenticated: () {
          debugPrint('unauthenticated');
        }, error: (error) {
          debugPrint('error');
        });
      },
    );

    ref.listen<InitialPageState>(
      initialPageStateNotifierProvider,
      (_, next) {
        if (next.isLoading) {
          hideProgress?.call();
          hideProgress = ref.read(mainProgressProvider.notifier).show();
        } else {
          hideProgress?.call();
          hideProgress = null;
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: kUserNameLblTxt,
                ),
                onChanged: (value) {
                  notifier.onUserNameChanged(value);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              height: 50,
              width: MediaQuery.of(context).size.width / 4,
              child: ElevatedButton(
                onPressed: () {
                  notifier.createAnounymouslyUser();
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                ),
                child: const Text(kStartBtnTxt),
              ),
            )
          ],
        ),
      ),
    );
  }
}