import 'package:go_router/go_router.dart';
import 'package:iktsar_app/core/Layouts/home_layout.dart';
import 'package:iktsar_app/features/authentication/presentation/views/add_new_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/done_reset_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/forget_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/login_screen.dart';
import 'package:iktsar_app/features/authentication/presentation/views/otp_forget_password_screen.dart';
import 'package:iktsar_app/features/authentication/presentation/views/otp_screen.dart';
import 'package:iktsar_app/features/authentication/presentation/views/register_screen.dart';
import 'package:iktsar_app/features/home/presentation/views/choose_ride_screen.dart';
import 'package:iktsar_app/features/home/presentation/views/confirm_ride.dart';
import 'package:iktsar_app/features/home/presentation/views/services_screen.dart';
import 'package:iktsar_app/features/on_boarding/presentations/on_boarding_view.dart';
import 'package:iktsar_app/features/setting/presentation/views/reset_password_screen.dart';
import 'package:iktsar_app/features/setting/presentation/views/setting_screen.dart';

abstract class AppRouter {
  static const kWelcomeView = '/';
  static const kHomeLayout = '/HomeLayout';

  static const kOnBoarding = '/OnBoardingScreen';
  static const kRegistretion = '/RegistretionScreen';
  static const kLogin = '/LoginScreen';
  static const kForgotPassword = '/ForgotPasswordScreen';
  static const kAddNewPassword = '/AddNEWPasswordScreen';
  static const kVerifyEmail = '/VerifyEmailScreen';
  static const kOtpView = '/OtpView';
  static const kOtpForgetPass = '/OtpForgetPass';
  static const kDonePassword = '/DonePassword';
  static const kHomeScreen = '/HomeScreen';
  static const kServicesScreen = '/ServicesScreen';
  static const kSettingScreen = '/SettingScreen';
  static const kResetPasswordScreen = '/ResetPasswordScreen';
  static const kChooseRideScreen = '/ChooseRideScreen';

  static final router = GoRouter(
      initialLocation:
          //kHomeLayOut,
          // getIt.get<CashHelperSharedPreferences>().getData(key: ApiKey.token) !=
          //         null
          //     ? kHomeLayOut
          //     : getIt
          //                 .get<CashHelperSharedPreferences>()
          //                 .getData(key: 'onBoarding') ==
          //             true
          //         ? kLogin
          //         :
          kHomeLayout,
      routes: [
        GoRoute(
          path: kHomeLayout,
          builder: (context, state) => const HomeLayout(),
        ),
        GoRoute(
          path: kOnBoarding,
          builder: (context, state) => OnBoardingScreen(),
        ),
        GoRoute(
          path: kLogin,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: kForgotPassword,
          builder: (context, state) => const ForgetPassword(),
        ),
        GoRoute(
          path: kAddNewPassword,
          builder: (context, state) => const AddNewPassword(),
        ),
        GoRoute(
          path: kDonePassword,
          builder: (context, state) => const DoneResetPassword(),
        ),
        GoRoute(
          path: kOtpView,
          builder: (context, state) => const OTPVerificationScreen(),
        ),
        GoRoute(
          path: kRegistretion,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: kOtpForgetPass,
          builder: (context, state) =>
              const OTPForgetPasswordVerificationScreen(),
        ),
        GoRoute(
          path: kHomeScreen,
          builder: (context, state) => const ConfirmRide(),
        ),
        GoRoute(
          path: kServicesScreen,
          builder: (context, state) => const ServicesScreen(),
        ),
        GoRoute(
          path: kSettingScreen,
          builder: (context, state) => const SettingScreen(),
        ),
        GoRoute(
          path: kResetPasswordScreen,
          builder: (context, state) => const ResetPasswordScreen(),
        ),
        GoRoute(
          path: kChooseRideScreen,
          builder: (context, state) => const ChooseRideScreen(),
        ),
      ]);
}
