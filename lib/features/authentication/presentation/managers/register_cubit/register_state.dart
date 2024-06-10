part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterPasswordVisibleEye extends RegisterState {}

final class RegisterConfirmPasswordVisibleEye extends RegisterState {}

class SignUpLoading extends RegisterState {}

class SignUpSuccess extends RegisterState {
  final AuthResponseModle message;

  SignUpSuccess({required this.message});
}

class SignUpFailure extends RegisterState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

class VerfyOtpLoading extends RegisterState {}

class VerfyOtpSuccess extends RegisterState {
  final VerifyOtpModle message;

  VerfyOtpSuccess({required this.message});
}

class VerfyOtpFailure extends RegisterState {
  final String errMessage;

  VerfyOtpFailure({required this.errMessage});
}
