import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/styles.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/login_cubit/login_cubit.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/register_cubit/register_cubit.dart';
import 'package:iktsar_app/features/authentication/presentation/widgets/custom_text_button_forgot_password.dart';
import 'package:iktsar_app/generated/l10n.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPForgetPasswordVerificationScreen extends StatelessWidget {
  const OTPForgetPasswordVerificationScreen({
    super.key,
  });

  // Check the OTP validity
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // if (state is VerfyOtpSuccess) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text(state.message.message),
        //     backgroundColor: Colors.green,
        //   ));
        // } else if (state is VerfyOtpFailure) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text(state.errMessage),
        //     backgroundColor: Colors.red,
        //   ));
        // }
      },
      builder: (context, state) {
        return Scaffold(
          body: Form(
            key: LoginCubit.get(context)!.formOtpVerifyForgetPassword,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
                      Text(S.of(context).verification,
                          style: Theme.of(context).textTheme.titleLarge!),
                      const SizedBox(height: 20),
                      Text(S.of(context).verificationDescription,
                          style: Styles.textStyle14Grey),
                      SizedBox(height: 30.h),
                      PinCodeTextField(
                          keyboardType: TextInputType.number,
                          cursorColor: Theme.of(context).indicatorColor,
                          appContext: context,
                          length: 4,
                          controller: LoginCubit.get(context)!.otpController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter OTP';
                            }
                            return null;
                          },
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 76.h,
                              fieldWidth: 74.w,
                              activeColor: Colors.grey,
                              selectedColor: Colors.grey,
                              inactiveColor: Colors.grey,
                              activeFillColor: Colors.white,
                              selectedFillColor: Colors.grey[200],
                              inactiveFillColor: Colors.grey[100],
                              errorBorderColor: Colors.red),
                          textStyle: TextStyle(
                            color: Theme.of(context).indicatorColor,
                          )),
                      SizedBox(height: 70.h),
                      state is VerfyOtpLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: kPrimaryKey,
                            ))
                          : CustomButtonLarge(
                              text: S.of(context).verfy,
                              color: kPrimaryKey,
                              textColor: Colors.white,
                              function: () {
                                if (LoginCubit.get(context)!
                                    .formOtpVerifyForgetPassword
                                    .currentState!
                                    .validate()) {
                                  // RegisterCubit.get(context)!.verfyAccountOtp();

                                  customJustGoNavigate(
                                      context: context,
                                      path: AppRouter.kAddNewPassword);
                                }
                              }),
                      SizedBox(height: 2.h),
                      CustomTextButtonForgotPassword(
                        function: () {
                          // customJustGoNavigate(
                          //     context: context, path: AppRouter.kForgotPassword);
                        },
                        text: S.of(context).resendtOtp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
