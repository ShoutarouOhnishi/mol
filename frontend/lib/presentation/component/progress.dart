import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ModalBarrier(dismissible: false, color: Colors.grey.withOpacity(0.1)),
        const Center(child: CircularProgressIndicator(strokeWidth: 1)),
      ],
    );
  }
}
