import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app_router.dart';
import 'package:frontend/constant/app.dart';
import 'package:frontend/constant/initial.dart';
import 'package:frontend/constant/match.dart';
import 'package:frontend/presentation/component/app_text_field.dart';
import 'package:frontend/presentation/component/progress.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/state/auth_state.dart';
import 'package:frontend/presentation/style/app_style.dart';

class InitialPage extends ConsumerStatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InitialPageState();
}

class _InitialPageState extends ConsumerState<InitialPage> {
  final userNameTextEditingController = TextEditingController();

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
        title: const Text(kAppName, style: AppStyles.headline),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: AppTextField(
                      labelText: kUserNameLblTxt,
                      controller: userNameTextEditingController),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {
                      notifier.onUserNameChanged(
                          userNameTextEditingController.text);
                      notifier.createAnonymouslyUser();
                    },
                    style: AppStyles.primaryButton,
                    child: const Text(kStartBtnTxt, style: AppStyles.body),
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
