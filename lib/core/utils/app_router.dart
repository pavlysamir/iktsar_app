import 'package:go_router/go_router.dart';
import 'package:iktsar_app/features/authentication/presentation/views/add_new_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/done_reset_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/forget_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/login_screen.dart';
import 'package:iktsar_app/features/authentication/presentation/views/otp_screen.dart';
import 'package:iktsar_app/features/authentication/presentation/views/register_screen.dart';
import 'package:iktsar_app/features/on_boarding/presentations/on_boarding_view.dart';

abstract class AppRouter {
  static const kWelcomeView = '/';
  static const kOnBoarding = '/OnBoardingScreen';
  static const kRegistretion = '/RegistretionScreen';
  static const kLogin = '/LoginScreen';
  static const kForgotPassword = '/ForgotPasswordScreen';
  static const kAddNewPassword = '/AddNEWPasswordScreen';
  static const kVerifyEmail = '/VerifyEmailScreen';
  static const kOtpView = '/OtpView';

  static const kDonePassword = '/DonePassword';

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
          kOnBoarding,
      routes: [
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
      ]);
}
