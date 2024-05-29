import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/app_router.dart';

import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/generated/l10n.dart';
import '../../../../../../core/utils/styles.dart';

class DoneResetPassword extends StatelessWidget {
  const DoneResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AssetsData.iktsarLogoLogin,
              ),
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                AssetsData.doneResetPassword,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(S.of(context).doneResetPassword,
                  style: Styles.textStyle24Black),
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                  onPressed: () {
                    customGoAndDeleteNavigate(
                        context: context, path: AppRouter.kLogin);
                  },
                  child: Text(S.of(context).gotoLogin,
                      style: Theme.of(context).textTheme.headlineMedium!))
            ],
          ),
        ),
      ),
    ));
  }
}
