import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomTextButtonForgotPassword extends StatelessWidget {
  const CustomTextButtonForgotPassword(
      {super.key, required this.function, required this.text});
  final Function() function;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: function,
        child: Text(text, style: Styles.textStyle12Orange),
      ),
    );
  }
}
