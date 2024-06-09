import 'package:flutter/material.dart';
import 'package:iktsar_app/constants.dart';

import 'package:iktsar_app/core/utils/styles.dart';

class CustomTextButtonToNavigateToSignUp extends StatelessWidget {
  const CustomTextButtonToNavigateToSignUp(
      {super.key,
      required this.function,
      required this.text,
      required this.textbutton});
  final Function() function;
  final String textbutton;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text,
        style: Styles.textStyle14Grey,
      ),
      TextButton(
          onPressed: function,
          child: Text(
            textbutton,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: kPrimaryKey),
          )),
    ]);
  }
}
