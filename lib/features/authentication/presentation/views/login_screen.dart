import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/core/utils/widgets/custom_form_field.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/login_cubit/login_cubit.dart';
import 'package:iktsar_app/features/authentication/presentation/widgets/custom_text_button_forgot_password.dart';
import 'package:iktsar_app/features/authentication/presentation/widgets/custom_text_button_navigate_sign_up.dart';
import 'package:iktsar_app/generated/l10n.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessfully) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
            backgroundColor: Colors.green,
          ));
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errMessage),
            backgroundColor: Colors.red,
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: Form(
          key: LoginCubit.get(context)!.formLoginKey,
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
                    Text(S.of(context).login,
                        style: Theme.of(context).textTheme.titleLarge!),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(S.of(context).fillCredintiol,
                        style: Styles.textStyle14Grey),
                    SizedBox(height: 30.h),
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
                            LoginCubit.get(context)!.mobileNumController,
                        validationMassage: (value) {
                          if (value.isEmpty) {
                            return S.of(context).enterPhone;
                          }
                        }),
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
                      controller: LoginCubit.get(context)!.passwordController,
                      validationMassage: (value) {
                        if (value.isEmpty) {
                          return 'please enter your password';
                        }
                      },
                    ),
                    SizedBox(height: 2.h),
                    CustomTextButtonForgotPassword(
                      function: () {
                        customJustGoNavigate(
                            context: context, path: AppRouter.kForgotPassword);
                      },
                      text: S.of(context).forgotPassword,
                    ),
                    // state is LoginLoading
                    //    ?
                    // const Center(
                    //     child: CircularProgressIndicator(
                    //     color: kPrimaryKey,
                    //   ))
                    //   :
                    state is LoginLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: kPrimaryKey,
                            ),
                          )
                        : CustomButtonLarge(
                            text: S.of(context).loginButton,
                            color: kPrimaryKey,
                            textColor: Colors.white,
                            function: () {
                              if (LoginCubit.get(context)!
                                  .formLoginKey
                                  .currentState!
                                  .validate()) {
                                LoginCubit.get(context)!.login();
                              }
                            }),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextButtonToNavigateToSignUp(
                      function: () {
                        customJustGoNavigate(
                            context: context, path: AppRouter.kRegistretion);
                      },
                      text: S.of(context).donthaveAccount,
                      textbutton: S.of(context).register,
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
