import 'package:go_router/go_router.dart';
import 'package:iktsar_app/features/authentication/presentation/views/add_new_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/done_reset_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/forget_password.dart';
import 'package:iktsar_app/features/authentication/presentation/views/login_screen.dart';
import 'package:iktsar_app/features/on_boarding/presentations/on_boarding_view.dart';

abstract class AppRouter {
  static const kWelcomeView = '/';
  static const kOnBoarding = '/OnBoardingScreen';
  static const kRegistretion = '/RegistretionScreen';
  static const kLogin = '/LoginScreen';
  static const kForgotPassword = '/ForgotPasswordScreen';
  static const kAddNewPassword = '/AddNEWPasswordScreen';
  static const kVerifyEmail = '/VerifyEmailScreen';
  static const kHomeScreen = '/HomeScreen';
  static const kHomeLayOut = '/HomeLayOut';
  static const kEditProfile = '/EditProfile';
  static const kCobonsView = '/CobonsView';
  static const kAddPostView = '/AddPostView';
  static const kSubscriptionView = '/SubscriptionView';
  static const kPaymentView = '/PaymentView';
  static const kChangePassword = '/changePassword';
  static const kNewChangePassword = '/newChangePassword';
  static const kVerifyNewChangePassword = '/VerifyNewChangePassword';
  static const kPrivateChat = '/PrivateChat';
  static const kAboutUs = '/AboutUs';
  static const kDonePassword = '/DonePassword';
  static const kEnterPromo = '/EnterPromo';
  static const kMySubscription = '/MySubscription';

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
      ]);
}
