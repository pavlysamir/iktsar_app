import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit? get(context) => BlocProvider.of(context);
  IconData iconData = Icons.visibility_off;
  bool ifPasswordVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController verfyNewPasswordOtpController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  var formLoginKey = GlobalKey<FormState>();

  // var formVerifyForgetOtpKey = GlobalKey<FormState>();
  var formForgetPassword = GlobalKey<FormState>();
  var formAddForgetPassword = GlobalKey<FormState>();
  var formOtpVerification = GlobalKey<FormState>();

  void isVisiblePasswordEye() {
    ifPasswordVisible = !ifPasswordVisible;
    iconData = ifPasswordVisible ? Icons.visibility_off : Icons.remove_red_eye;
    emit(LoginIsPasswordVisibleEye());
  }
}
