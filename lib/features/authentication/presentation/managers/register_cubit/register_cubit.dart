import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iktsar_app/features/authentication/data/models/register_data_model.dart';
import 'package:iktsar_app/features/authentication/data/models/register_model.dart';
import 'package:iktsar_app/features/authentication/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepository) : super(RegisterInitial());
  static RegisterCubit? get(context) => BlocProvider.of(context);
  final AuthRepo authRepository;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  var formRegisterKey = GlobalKey<FormState>();

  IconData iconDataPassword = Icons.visibility_off;

  IconData iconDataConfirmPassword = Icons.visibility_off;

  bool ifPasswordVisible = true;

  bool ifConfirmPasswordVisible = true;

  void isVisiblePasswordEye() {
    ifPasswordVisible = !ifPasswordVisible;
    iconDataPassword =
        ifPasswordVisible ? Icons.visibility_off : Icons.remove_red_eye;
    emit(RegisterPasswordVisibleEye());
  }

  void isVisibleConformPasswordEye() {
    ifConfirmPasswordVisible = !ifConfirmPasswordVisible;
    iconDataConfirmPassword =
        ifConfirmPasswordVisible ? Icons.visibility_off : Icons.remove_red_eye;
    emit(RegisterConfirmPasswordVisibleEye());
  }

  signUp() async {
    emit(SignUpLoading());
    final response = await authRepository.signUp(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      email: emailController.text,
      password: passwordController.text,
      mobileNumber: mobileNumberController.text,
    );
    response.fold((errMessage) => emit(SignUpFailure(errMessage: errMessage)),
        (signUpModel) async {
      // await getIt
      //     .get<CashHelperSharedPreferences>()
      //     .saveData(key: ApiKey.verfyAccount, value: emailController.text);

      emailController.clear();
      passwordController.clear();
      firstNameController.clear();
      lastNameController.clear();
      mobileNumberController.clear();

      emit(SignUpSuccess(message: signUpModel));
    });
  }
}
