import 'package:dartz/dartz.dart';
import 'package:iktsar_app/core/api/api_consumer.dart';
import 'package:iktsar_app/core/api/end_ponits.dart';
import 'package:iktsar_app/core/errors/exceptions.dart';
import 'package:iktsar_app/core/utils/service_locator.dart';
import 'package:iktsar_app/core/utils/shared_preferences_cash_helper.dart';
import 'package:iktsar_app/features/authentication/data/models/login_model.dart';
import 'package:iktsar_app/features/authentication/data/models/register_data_model.dart';
import 'package:iktsar_app/features/authentication/data/models/register_model.dart';
import 'package:iktsar_app/features/authentication/data/models/verfy_otp_model.dart';
import 'package:iktsar_app/features/authentication/data/repo/auth_repo.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

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
          ApiKey.mobNumber: '966$mobileNumber',
          ApiKey.password: password,
        },
      );
      final signUPModel = AuthResponseModle.fromJson(response);
      return Right(signUPModel);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage!);
    }
  }

  @override
  Future<Either<String, VerifyOtpModle>> verifyOtp(
      {required String otp, required String mobileNum}) async {
    try {
      final response = await api.post(
        EndPoint.verfyAccount,
        data: {
          ApiKey.mobNumber: '966$mobileNum',
          ApiKey.otp: otp,
        },
      );

      final verify = VerifyOtpModle.fromJson(response);
      final decodedToken = JwtDecoder.decode(verify.token);
      final userData = AddUserModel.fromJson(decodedToken);

      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.id, value: userData.id);

      print(getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.id, value: userData.id));
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.firstName, value: userData.firstName);
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.lastName, value: userData.lastName);
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.email, value: userData.email);

      return Right(verify);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage!);
    }
  }

  @override
  Future<Either<String, LoginModel>> login(
      {required String mobileNum, required String passwword}) async {
    try {
      final response = await api.post(
        EndPoint.login,
        data: {
          ApiKey.mobNumber: '966$mobileNum',
          ApiKey.password: passwword,
        },
      );

      final login = LoginModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(login.token);
      final userData = AddUserModel.fromJson(decodedToken);

      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.id, value: userData.id);
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.firstName, value: userData.firstName);
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.lastName, value: userData.lastName);
      getIt
          .get<CashHelperSharedPreferences>()
          .saveData(key: ApiKey.email, value: userData.email);

      return Right(login);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage!);
    }
  }

  @override
  Future<Either<String, String>> forgetpass({required String mobileNum}) async {
    try {
      final response = await api.post(
        EndPoint.forgotPassword,
        data: {
          ApiKey.mobNumber: '966$mobileNum',
        },
      );

      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage!);
    }
  }
}
