import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/core/utils/widgets/custom_form_field.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/cubit/login_cubit.dart';
import 'package:iktsar_app/features/authentication/presentation/widgets/custom_text_button_forgot_password.dart';
import 'package:iktsar_app/features/authentication/presentation/widgets/custom_text_button_navigate_sign_up.dart';
import 'package:iktsar_app/generated/l10n.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            body: Form(
          key: LoginCubit.get(context)!.formKey,
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
                        hintText: '+966',
                        controller: LoginCubit.get(context)!.emailController,
                        validationMassage: (value) {
                          if (value.isEmpty) {
                            return S.of(context).enterEmail;
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
                    CustomTextButtonForgotPassword(function: () {
                      // customJustGoNavigate(
                      //     context: context, path: AppRouter.kForgotPassword);
                    }),
                    // state is LoginLoading
                    //    ?
                    // const Center(
                    //     child: CircularProgressIndicator(
                    //     color: kPrimaryKey,
                    //   ))
                    //   :
                    CustomButtonLarge(
                        text: S.of(context).loginButton,
                        color: kPrimaryKey,
                        textColor: Colors.white,
                        function: () {
                          if (LoginCubit.get(context)!
                              .formKey
                              .currentState!
                              .validate()) {
                            // LoginCubit.get(context)!.signIn();
                          }
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextButtonToNavigateToSignUp(),

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
