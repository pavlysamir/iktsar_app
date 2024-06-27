import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/functions/validation_handling.dart';
import 'package:iktsar_app/core/utils/styles.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/core/utils/widgets/custom_form_field.dart';
import 'package:iktsar_app/features/setting/presentation/manager/cubit/profile_cubit.dart';
import 'package:iktsar_app/generated/l10n.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Form(
                key: ProfileCubit.get(context)!.foemResetPassword,
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reset Password',
                          style: Theme.of(context).textTheme.titleMedium),
                      SizedBox(height: 30.h),
                      Text(
                        S.of(context).password,
                        style: Styles.textStyle14Grey,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomFormField(
                          isEyeTrue:
                              ProfileCubit.get(context)!.ifPasswordVisible,
                          suffixIcon: IconButton(
                            onPressed: () {
                              ProfileCubit.get(context)!.isVisiblePasswordEye();
                            },
                            icon: Icon(
                                ProfileCubit.get(context)!.iconDataPassword),
                          ),
                          textInputType: TextInputType.visiblePassword,
                          hintText: '*************',
                          controller:
                              ProfileCubit.get(context)!.passwordController,
                          validationMassage: conditionOfValidationPassWord),
                      SizedBox(height: 30.h),
                      Text(
                        S.of(context).confirmPassword,
                        style: Styles.textStyle14Grey,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomFormField(
                        isEyeTrue:
                            ProfileCubit.get(context)!.ifConfirmPasswordVisible,
                        suffixIcon: IconButton(
                          onPressed: () {
                            ProfileCubit.get(context)!
                                .isVisibleConformPasswordEye();
                          },
                          icon: Icon(ProfileCubit.get(context)!
                              .iconDataConfirmPassword),
                        ),
                        textInputType: TextInputType.visiblePassword,
                        hintText: '*************',
                        controller: ProfileCubit.get(context)!
                            .resetConfirmPasswordController,
                        validationMassage: (value) {
                          if (value ==
                              ProfileCubit.get(context)!
                                  .passwordController
                                  .text) {
                            return null;
                          } else {
                            return 'does\'t match ';
                          }
                        },
                      ),
                      SizedBox(height: 40.h),
                      CustomButtonLarge(
                          text: 'Change Password',
                          color: kPrimaryKey,
                          textColor: Colors.white,
                          function: () {})
                    ],
                  ),
                ))),
          ),
        );
      },
    );
  }
}
