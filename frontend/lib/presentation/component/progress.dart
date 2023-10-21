import 'package:flutter/material.dart';

class Progress {
  static const barrierColor = Color.fromARGB(64, 0, 0, 0);
  static const routeSettingName = RouteSettings(name: 'progress_utils');

  /// 親Widget全体を覆ってProgress表示するWidget
  /// ローティング中の入力禁止用
  static Widget fillParentWithCircularIndicator() {
    return Container(
      // 完全な透明だと仮想のWidgetが入力を受け付けてしまうのでcolorを指定
      color: barrierColor,
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }

  /// プログレスのダイアログを表示する
  static Route showProgressDialog(BuildContext context) {
    final route = _OverlayProgressRoute();
    Navigator.of(context).push(route);
    return route;
  }
}

/// プログレスダイアログ用のRoute
/// プログレスを閉じる時、Routeが必要になるので、
/// showDialog()を使わず、これをNavigatorにpushする
class _OverlayProgressRoute extends ModalRoute<void> {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 100);

  @override
  RouteSettings get settings => Progress.routeSettingName;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Progress.barrierColor;

  @override
  String get barrierLabel => "";

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return const Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
