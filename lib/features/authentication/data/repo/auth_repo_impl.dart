import 'package:dartz/dartz.dart';
import 'package:iktsar_app/core/api/api_consumer.dart';
import 'package:iktsar_app/core/api/end_ponits.dart';
import 'package:iktsar_app/core/errors/exceptions.dart';
import 'package:iktsar_app/features/authentication/data/models/register_model.dart';
import 'package:iktsar_app/features/authentication/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiConsumer api;
  AuthRepoImpl({required this.api});

  @override
  Future<Either<String, AuthResponseModle>> signUp(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String mobileNumber}) async {
    try {
      final response = await api.post(
        EndPoint.signUp,
        data: {
          ApiKey.firstName: firstName,
          ApiKey.lastName: lastName,
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      final signUPModel = AuthResponseModle.fromJson(response);
      return Right(signUPModel);
    } on ServerException catch (e) {
      return Left(e.errModel.error!);
    }
  }
}
