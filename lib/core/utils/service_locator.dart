import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:iktsar_app/core/api/dio_consumer.dart';

import 'shared_preferences_cash_helper.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<CashHelperSharedPreferences>(
      CashHelperSharedPreferences());

  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: Dio()));

  // getIt.registerSingleton<ProfileRepository>(ProfileRepository(
  //   api: getIt.get<DioConsumer>(),
  // ));
}
