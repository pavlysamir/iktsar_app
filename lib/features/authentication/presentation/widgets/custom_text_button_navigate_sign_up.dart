import 'package:flutter/material.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/styles.dart';
import 'package:iktsar_app/generated/l10n.dart';

class CustomTextButtonToNavigateToSignUp extends StatelessWidget {
  const CustomTextButtonToNavigateToSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        S.of(context).donthaveAccount,
        style: Styles.textStyle14Grey,
      ),
      TextButton(
          onPressed: () {
            // customPushNavigate(
            //     context: context, path: AppRouter.kRegisterView);
          },
          child: Text(
            S.of(context).register,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: kPrimaryKey),
          )),
    ]);
  }
}
