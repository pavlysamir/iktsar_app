import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/functions/validation_handling.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/core/utils/widgets/custom_form_field.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/register_cubit/register_cubit.dart';
import 'package:iktsar_app/features/authentication/presentation/widgets/custom_text_button_navigate_sign_up.dart';
import 'package:iktsar_app/generated/l10n.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message.message),
            backgroundColor: Colors.green,
          ));

          customGoAndDeleteNavigate(context: context, path: AppRouter.kOtpView);
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errMessage),
            backgroundColor: Colors.red,
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: Form(
          key: RegisterCubit.get(context)!.formRegisterKey,
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
                    SizedBox(
                      height: 70.h,
                    ),
                    Text(S.of(context).register,
                        style: Theme.of(context).textTheme.titleLarge!),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(S.of(context).fillCredintiol,
                        style: Styles.textStyle14Grey),
                    SizedBox(height: 30.h),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).firstName,
                                  style: Styles.textStyle14Grey,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomFormField(
                                    textInputType: TextInputType.text,
                                    hintText: S.of(context).name,
                                    controller: RegisterCubit.get(context)!
                                        .firstNameController,
                                    validationMassage: (value) {
                                      if (value.isEmpty) {
                                        return S.of(context).enerFirstName;
                                      }
                                    }),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).lastName,
                                  style: Styles.textStyle14Grey,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomFormField(
                                    textInputType: TextInputType.text,
                                    hintText: S.of(context).lastName,
                                    controller: RegisterCubit.get(context)!
                                        .lastNameController,
                                    validationMassage: (value) {
                                      if (value.isEmpty) {
                                        return S.of(context).enerLastName;
                                      }
                                    }),
                              ],
                            ),
                          )
                        ]),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      S.of(context).mobileNum,
                      style: Styles.textStyle14Grey,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomFormField(
                        imagePath: AssetsData.sudi,
                        textInputType: TextInputType.phone,
                        hintText: '00 000 0000',
                        controller:
                            RegisterCubit.get(context)!.mobileNumberController,
                        validationMassage: (value) {
                          if (value.isEmpty) {
                            return S.of(context).enterPhone;
                          }
                        }),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      S.of(context).loginEmail,
                      style: Styles.textStyle14Grey,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomFormField(
                        textInputType: TextInputType.emailAddress,
                        hintText: '+examle233@gmail.com',
                        controller: RegisterCubit.get(context)!.emailController,
                        validationMassage: conditionOfValidationEmail),
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
                            RegisterCubit.get(context)!.ifPasswordVisible,
                        suffixIcon: IconButton(
                          onPressed: () {
                            RegisterCubit.get(context)!.isVisiblePasswordEye();
                          },
                          icon: Icon(
                              RegisterCubit.get(context)!.iconDataPassword),
                        ),
                        textInputType: TextInputType.visiblePassword,
                        hintText: '*************',
                        controller:
                            RegisterCubit.get(context)!.passwordController,
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
                          RegisterCubit.get(context)!.ifConfirmPasswordVisible,
                      suffixIcon: IconButton(
                        onPressed: () {
                          RegisterCubit.get(context)!
                              .isVisibleConformPasswordEye();
                        },
                        icon: Icon(RegisterCubit.get(context)!
                            .iconDataConfirmPassword),
                      ),
                      textInputType: TextInputType.visiblePassword,
                      hintText: '*************',
                      controller:
                          RegisterCubit.get(context)!.confirmPasswordController,
                      validationMassage: (value) {
                        if (value ==
                            RegisterCubit.get(context)!
                                .passwordController
                                .text) {
                          return null;
                        } else {
                          return 'does\'t match ';
                        }
                      },
                    ),
                    SizedBox(height: 40.h),
                    state is SignUpLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: kPrimaryKey,
                            ),
                          )
                        : CustomButtonLarge(
                            text: S.of(context).register,
                            color: kPrimaryKey,
                            textColor: Colors.white,
                            function: () {
                              if (RegisterCubit.get(context)!
                                  .formRegisterKey
                                  .currentState!
                                  .validate()) {
                                RegisterCubit.get(context)!.signUp();
                              }
                            }),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextButtonToNavigateToSignUp(
                      function: () {
                        customJustGoNavigate(
                            context: context, path: AppRouter.kLogin);
                      },
                      text: S.of(context).AlreadyhaveAccount,
                      textbutton: S.of(context).login,
                    ),
                    SizedBox(
                      height: 40.h,
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
