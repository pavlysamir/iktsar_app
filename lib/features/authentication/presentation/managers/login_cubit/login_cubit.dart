import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  TextEditingController verfyNewPasswordOtpController = TextEditingController();

  var formLoginKey = GlobalKey<FormState>();

  // var formVerifyForgetOtpKey = GlobalKey<FormState>();
  var formForgetPassword = GlobalKey<FormState>();
  var formAddForgetPassword = GlobalKey<FormState>();

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
}
