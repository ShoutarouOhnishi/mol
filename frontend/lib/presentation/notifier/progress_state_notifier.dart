import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/presentation/component/progress.dart';

part 'progress_state_notifier.freezed.dart';

final mainProgressProvider =
    StateNotifierProvider.autoDispose<ProgressStateNotifier, ProgressState>(
        (ref) {
  return ProgressStateNotifier();
});

extension ProgressProviders
    on AutoDisposeStateNotifierProvider<ProgressStateNotifier, ProgressState> {
  void listen(BuildContext context, WidgetRef ref) {
    final progressNotifier = ref.read(notifier);
    ref.listen<int>(
        select((s) => s.referenceCounter),
        (prevCounter, counter) =>
            progressNotifier.listenCallback(context, prevCounter, counter));
  }
}

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState({
    @Default(0) int referenceCounter,
  }) = _ProgressState;
}

class ProgressStateNotifier extends StateNotifier<ProgressState> {
  ProgressStateNotifier() : super(const ProgressState());
  Route? _dialogRoute;

  void Function() show() {
    state = state.copyWith(
      referenceCounter: state.referenceCounter + 1,
    );

    return () {
      _hide();
    };
  }

  void _hide() {
    if (state.referenceCounter <= 0) return;

    state = state.copyWith(
      referenceCounter: state.referenceCounter - 1,
    );
  }

  void listenCallback(
      BuildContext context, int? prevReferenceCounter, int referenceCounter) {
    prevReferenceCounter = prevReferenceCounter ?? 0;
    if (prevReferenceCounter == 0 && referenceCounter == 1) {
      _dialogRoute = Progress.showProgressDialog(context);
      return;
    }

    if (prevReferenceCounter >= 1 && referenceCounter == 0) {
      if (_dialogRoute == null) return;
      Navigator.of(context).removeRoute(_dialogRoute!);
      _dialogRoute = null;
    }
  }
}
