import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/core/utils/widgets/custom_form_field.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/login_cubit/login_cubit.dart';
import 'package:iktsar_app/generated/l10n.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../constants.dart';

class AddNewPassword extends StatelessWidget {
  const AddNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: Form(
          key: LoginCubit.get(context)!.formAddForgetPassword,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        AssetsData.iktsarLogoLogin,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text(S.of(context).enterPhone,
                        style: Theme.of(context).textTheme.titleLarge!),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      S.of(context).fillCredintiol,
                      style: Styles.textStyle14Grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      S.of(context).password,
                      style: Styles.textStyle14Grey,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomFormField(
                      isEyeTrue: LoginCubit.get(context)!.ifPasswordVisible,
                      suffixIcon: IconButton(
                        onPressed: () {
                          LoginCubit.get(context)!.isVisiblePasswordEye();
                        },
                        icon: Icon(LoginCubit.get(context)!.iconData),
                      ),
                      textInputType: TextInputType.visiblePassword,
                      hintText: '*************',
                      controller:
                          LoginCubit.get(context)!.oldPasswordController,
                      validationMassage: (value) {
                        if (value.isEmpty) {
                          return 'please enter your password';
                        }
                      },
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      S.of(context).confirmPassword,
                      style: Styles.textStyle14Grey,
                    ),
                    SizedBox(height: 10.h),
                    CustomFormField(
                      isEyeTrue: LoginCubit.get(context)!.ifPasswordVisible,
                      suffixIcon: IconButton(
                        onPressed: () {
                          LoginCubit.get(context)!.isVisiblePasswordEye();
                        },
                        icon: Icon(LoginCubit.get(context)!.iconData),
                      ),
                      textInputType: TextInputType.visiblePassword,
                      hintText: '*************',
                      controller:
                          LoginCubit.get(context)!.newPasswordController,
                      validationMassage: (value) {
                        if (value.isEmpty) {
                          return 'please enter your password';
                        }
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButtonLarge(
                        text: S.of(context).next,
                        color: kPrimaryKey,
                        textColor: Colors.white,
                        function: () {
                          if (LoginCubit.get(context)!
                              .formAddForgetPassword
                              .currentState!
                              .validate()) {
                            // LoginCubit.get(context)!.signIn();
                            customJustGoNavigate(
                                context: context,
                                path: AppRouter.kDonePassword);
                          }
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
      },
    );
  }
}
