import 'package:dartz/dartz.dart';

import 'package:iktsar_app/features/authentication/data/models/register_model.dart';

abstract class AuthRepo {
  Future<Either<String, AuthResponseModle>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String mobileNumber,
  });
}
