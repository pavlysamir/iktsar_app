import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/Theme/Teme_data.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/service_locator.dart';
import 'package:iktsar_app/features/authentication/data/repo/auth_repo_impl.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/login_cubit/login_cubit.dart';
import 'package:iktsar_app/features/authentication/presentation/managers/register_cubit/register_cubit.dart';
import 'package:iktsar_app/features/home/presentation/managers/cubit/home_cubit.dart';
import 'package:iktsar_app/features/setting/presentation/manager/cubit/profile_cubit.dart';
import 'package:iktsar_app/generated/l10n.dart';

class IktsarApp extends StatelessWidget {
  const IktsarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => RegisterCubit(getIt.get<AuthRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => HomeCubit(),
          ),
          BlocProvider(
            create: (context) => ProfileCubit(),
          ),
        ],
        child: MaterialApp.router(
            locale: const Locale('en'),
            //isEnglish ? const Locale('en') : const Locale('ar'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme),
      ),
    );
  }
}
