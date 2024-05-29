import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iktsar_app/core/utils/service_locator.dart';
import 'package:iktsar_app/core/utils/shared_preferences_cash_helper.dart';
import 'package:iktsar_app/core/utils/simple_bloc_observer.dart';
import 'package:iktsar_app/iktsar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServiceLocator();
  await getIt.get<CashHelperSharedPreferences>().init();
  Bloc.observer = SimpleBlocObserver();
  runApp(const IktsarApp());
}
