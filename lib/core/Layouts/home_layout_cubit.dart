import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iktsar_app/core/utils/shared_preferences_cash_helper.dart';
import 'package:iktsar_app/features/home/presentation/views/home_screen.dart';
import 'package:iktsar_app/features/home/presentation/views/services_screen.dart';
import 'package:iktsar_app/features/setting/presentation/views/setting_screen.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);
  bool isDark = true;
  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await CashHelperSharedPreferences()
          .saveData(key: 'mode', value: isDark)
          .then((value) {
        emit(themeChangeMode(isDark: isDark));
      });
    }
  }

  int currentIndex = 0;
  List screens = [
    const HomeScreen(),
    const ServicesScreen(),
    const SettingScreen()
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(HomeChaneNavBar());
  }
}
