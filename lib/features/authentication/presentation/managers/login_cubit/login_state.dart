part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class LoginIsPasswordVisibleEye extends LoginState {}

class LoginSuccessfully extends LoginState {
  final String message;

  LoginSuccessfully({required this.message});
}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String errMessage;
  LoginFailure({required this.errMessage});
}

class VerifyForgetPasswordSuccessfully extends LoginState {
  final String message;
  VerifyForgetPasswordSuccessfully({required this.message});
}

class VerifyForgetPasswordLoading extends LoginState {}

class VerifyForgetPasswordFailure extends LoginState {
  final String errMessage;
  VerifyForgetPasswordFailure({required this.errMessage});
}

class VerifyForgetPasswordOtpSuccessfully extends LoginState {
  final String message;
  VerifyForgetPasswordOtpSuccessfully({required this.message});
}

class VerifyForgetPasswordOtpLoading extends LoginState {}

class VerifyForgetPasswordOtpFailure extends LoginState {
  final String errMessage;
  VerifyForgetPasswordOtpFailure({required this.errMessage});
}

class ResetNewPasswordSuccessfully extends LoginState {
  final String message;
  ResetNewPasswordSuccessfully({required this.message});
}

class ResetNewPasswordLoading extends LoginState {}

class ResetNewPasswordFailure extends LoginState {
  final String errMessage;
  ResetNewPasswordFailure({required this.errMessage});
}
