import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/constant/app.dart';
import 'package:frontend/constant/initali.dart';
import 'package:frontend/presentation/component/progress.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/state/auth_state.dart';

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
    final provider = initialPageStateNotifierProvider;
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);

    ref.listen<AuthState>(
      authStateProvider,
      (_, newState) {
        newState.event.when(initial: () {
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

    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
      ),
      body: Stack(
        children: [
          Center(
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
                      notifier.createAnonymouslyUser();
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
          if (state.isLoading) const Progress(),
        ],
      ),
    );
  }
}
