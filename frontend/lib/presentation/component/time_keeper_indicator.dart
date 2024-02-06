import 'package:flutter/material.dart';

class TimeKeeperIndicator extends StatelessWidget {
  final int? time;

  const TimeKeeperIndicator({
    Key? key,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (time == null) {
      return const LinearProgressIndicator(
          value: 1.0,
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white));
    }
    return TweenAnimationBuilder(
      duration: Duration(seconds: time!),
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, value, child) {
        return LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.red,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
        );
      },
    );
  }
}
