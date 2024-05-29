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
  TextEditingController emailForForgetPasswordController =
      TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController verfyNewPasswordOtpController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var formVerifyForgetOtpKey = GlobalKey<FormState>();
  var formVerifyEmailForgetOtpKey = GlobalKey<FormState>();

  void isVisiblePasswordEye() {
    ifPasswordVisible = !ifPasswordVisible;
    iconData = ifPasswordVisible ? Icons.visibility_off : Icons.remove_red_eye;
    emit(LoginIsPasswordVisibleEye());
  }
}
