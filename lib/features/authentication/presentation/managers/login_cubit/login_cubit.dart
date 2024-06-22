import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iktsar_app/core/api/end_ponits.dart';
import 'package:iktsar_app/core/utils/service_locator.dart';
import 'package:iktsar_app/core/utils/shared_preferences_cash_helper.dart';
import 'package:iktsar_app/features/authentication/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepository) : super(LoginInitial());
  final AuthRepo authRepository;

  static LoginCubit? get(context) => BlocProvider.of(context);
  IconData iconData = Icons.visibility_off;
  bool ifPasswordVisible = true;
  TextEditingController mobileNumController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  TextEditingController verfyNewPasswordOtpController = TextEditingController();

  var formLoginKey = GlobalKey<FormState>();

  // var formVerifyForgetOtpKey = GlobalKey<FormState>();
  var formForgetPassword = GlobalKey<FormState>();
  var formAddForgetPassword = GlobalKey<FormState>();
  var formOtpVerifyForgetPassword = GlobalKey<FormState>();

  void isVisiblePasswordEye() {
    ifPasswordVisible = !ifPasswordVisible;
    iconData = ifPasswordVisible ? Icons.visibility_off : Icons.remove_red_eye;
    emit(LoginIsPasswordVisibleEye());
  }

  login() async {
    emit(LoginLoading());
    final response = await authRepository.login(
      mobileNum: mobileNumController.text,
      passwword: passwordController.text,
    );
    response.fold(
      (errMessage) => emit(LoginFailure(errMessage: errMessage)),
      (login) => emit(LoginSuccessfully(message: login.message)),
    );
  }

  forgetpassword() async {
    emit(VerifyForgetPasswordLoading());
    final response = await authRepository.forgetpass(
      mobileNum: verfyNewPasswordOtpController.text,
    );
    response.fold(
        (errMessage) =>
            emit(VerifyForgetPasswordFailure(errMessage: errMessage)),
        (forget) {
      getIt.get<CashHelperSharedPreferences>().saveData(
          key: ApiKey.mobNumber, value: verfyNewPasswordOtpController.text);

      emit(VerifyForgetPasswordSuccessfully(message: forget));
    });
  }

  verifyForgetPasswordOtp() async {
    emit(VerifyForgetPasswordOtpLoading());
    final response = await authRepository.verifyForgetPassOtp(
      mobileNum: getIt
          .get<CashHelperSharedPreferences>()
          .getData(key: ApiKey.mobNumber),
      otp: otpController.text,
    );
    response.fold(
        (errMessage) =>
            emit(VerifyForgetPasswordOtpFailure(errMessage: errMessage)),
        (forget) {
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.otp, value: otpController.text);

      emit(VerifyForgetPasswordOtpSuccessfully(message: forget));
    });
  }

  resetNewPassword() async {
    emit(ResetNewPasswordLoading());
    final response = await authRepository.resetNewPassword(
      mobileNum: getIt
          .get<CashHelperSharedPreferences>()
          .getData(key: ApiKey.mobNumber),
      otp: getIt.get<CashHelperSharedPreferences>().getData(key: ApiKey.otp),
      newPassword: newPasswordController.text,
    );
    response.fold(
        (errMessage) => emit(ResetNewPasswordFailure(errMessage: errMessage)),
        (forget) {
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.otp, value: otpController.text);

      emit(ResetNewPasswordSuccessfully(message: forget));
    });
  }
}
