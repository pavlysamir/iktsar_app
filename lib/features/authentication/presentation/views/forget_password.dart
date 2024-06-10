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

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            body: Form(
          key: LoginCubit.get(context)!.formForgetPassword,
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
                    Text(S.of(context).forgotPassword,
                        style: Theme.of(context).textTheme.titleLarge!),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      S.of(context).fillCredintionToOtp,
                      style: Styles.textStyle14Grey,
                      overflow: TextOverflow.ellipsis,
                    ),
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
                        controller: LoginCubit.get(context)!
                            .verfyNewPasswordOtpController,
                        validationMassage: (value) {
                          if (value.isEmpty) {
                            return S.of(context).enterPhone;
                          }
                        }),
                    SizedBox(height: 30.h),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomButtonLarge(
                        text: S.of(context).next,
                        color: kPrimaryKey,
                        textColor: Colors.white,
                        function: () {
                          if (LoginCubit.get(context)!
                              .formForgetPassword
                              .currentState!
                              .validate()) {
                            // LoginCubit.get(context)!.signIn();
                            customJustGoNavigate(
                                context: context,
                                path: AppRouter.kOtpForgetPass);
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
