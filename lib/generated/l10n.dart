// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to IKTSAR`
  String get onBoardingSlider1 {
    return Intl.message(
      'Welcome to IKTSAR',
      name: 'onBoardingSlider1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to IKTSAR`
  String get onBoardingSlider2 {
    return Intl.message(
      'Welcome to IKTSAR',
      name: 'onBoardingSlider2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to IKTSAR`
  String get onBoardingSlider3 {
    return Intl.message(
      'Welcome to IKTSAR',
      name: 'onBoardingSlider3',
      desc: '',
      args: [],
    );
  }

  /// `Welcome as you learn a world changing skill to get a better job. `
  String get onBoardingSlider1subTitle1 {
    return Intl.message(
      'Welcome as you learn a world changing skill to get a better job. ',
      name: 'onBoardingSlider1subTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome as you learn a world changing skill to get a better job.`
  String get onBoardingSlider2subTitle1 {
    return Intl.message(
      'Welcome as you learn a world changing skill to get a better job.',
      name: 'onBoardingSlider2subTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome as you learn a world changing skill to get a better job. `
  String get onBoardingSlider3subTitle1 {
    return Intl.message(
      'Welcome as you learn a world changing skill to get a better job. ',
      name: 'onBoardingSlider3subTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to `
  String get welcome {
    return Intl.message(
      'Welcome to ',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get login {
    return Intl.message(
      'Sign in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please fill the credentials`
  String get fillCredintiol {
    return Intl.message(
      'Please fill the credentials',
      name: 'fillCredintiol',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginEmail {
    return Intl.message(
      'Email',
      name: 'loginEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginPassword {
    return Intl.message(
      'Password',
      name: 'loginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get registerName {
    return Intl.message(
      'Name',
      name: 'registerName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get registerEmail {
    return Intl.message(
      'Email',
      name: 'registerEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get registerPassword {
    return Intl.message(
      'Password',
      name: 'registerPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerButton {
    return Intl.message(
      'Register',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Phone Number`
  String get enterPhone {
    return Intl.message(
      'Enter Your Phone Number',
      name: 'enterPhone',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mobileNum {
    return Intl.message(
      'Mobile number',
      name: 'mobileNum',
      desc: '',
      args: [],
    );
  }

  /// `You dont have any account?`
  String get donthaveAccount {
    return Intl.message(
      'You dont have any account?',
      name: 'donthaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have any account?`
  String get AlreadyhaveAccount {
    return Intl.message(
      'Already have any account?',
      name: 'AlreadyhaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please fill the credentials to send the otp`
  String get fillCredintionToOtp {
    return Intl.message(
      'Please fill the credentials to send the otp',
      name: 'fillCredintionToOtp',
      desc: '',
      args: [],
    );
  }

  /// `Done reset password`
  String get doneResetPassword {
    return Intl.message(
      'Done reset password',
      name: 'doneResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Go to log in >  `
  String get gotoLogin {
    return Intl.message(
      'Go to log in >  ',
      name: 'gotoLogin',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code to verification your sms`
  String get verificationDescription {
    return Intl.message(
      'Enter the code to verification your sms',
      name: 'verificationDescription',
      desc: '',
      args: [],
    );
  }

  /// `Resend code?`
  String get resendtOtp {
    return Intl.message(
      'Resend code?',
      name: 'resendtOtp',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verfy {
    return Intl.message(
      'Verify',
      name: 'verfy',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter First name`
  String get enerFirstName {
    return Intl.message(
      'Enter First name',
      name: 'enerFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Last name`
  String get enerLastName {
    return Intl.message(
      'Enter Last name',
      name: 'enerLastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enterEmail {
    return Intl.message(
      'Enter Your Email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
