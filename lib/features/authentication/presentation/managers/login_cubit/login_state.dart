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
