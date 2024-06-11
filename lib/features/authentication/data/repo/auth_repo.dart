import 'package:dartz/dartz.dart';
import 'package:iktsar_app/features/authentication/data/models/login_model.dart';

import 'package:iktsar_app/features/authentication/data/models/register_model.dart';
import 'package:iktsar_app/features/authentication/data/models/verfy_otp_model.dart';

abstract class AuthRepo {
  Future<Either<String, AuthResponseModle>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String mobileNumber,
  });

  Future<Either<String, VerifyOtpModle>> verifyOtp({
    required String mobileNum,
    required String otp,
  });

  Future<Either<String, LoginModel>> login({
    required String mobileNum,
    required String passwword,
  });

  Future<Either<String, String>> forgetpass({
    required String mobileNum,
  });
}
