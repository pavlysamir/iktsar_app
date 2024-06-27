part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class RegisterPasswordVisibleEye extends ProfileState {}

final class RegisterConfirmPasswordVisibleEye extends ProfileState {}
