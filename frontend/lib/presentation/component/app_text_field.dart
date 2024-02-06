import 'package:flutter/material.dart';
import 'package:frontend/presentation/style/app_style.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const AppTextField(
      {Key? key, required this.labelText, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        style: AppStyles.body,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.secondary),
          ),
          labelText: labelText,
          labelStyle: AppStyles.caption.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ));
  }
}
