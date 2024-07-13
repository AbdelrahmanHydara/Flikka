import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/features/account_setup/screens/account_setup_screen.dart';
import 'package:flikka/features/account_setup/screens/widgets/congratulations_screen.dart';
import 'package:flikka/features/auth/login/screens/login_screen.dart';
import 'package:flikka/features/auth/register/screens/register_screen.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_cubit.dart';
import 'package:flikka/features/choose_language/screens/choose_language_screen.dart';
import 'package:flikka/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRouter {
  MyRouter._();

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.chooseLanguage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (BuildContext context) => ChooseLanguageCubit(),
              child: const ChooseLanguageScreen()),
        );
      case Routes.accountSetup:
        return MaterialPageRoute(
          builder: (context) => const AccountSetupScreen(),
        );
      case Routes.congratulationsScreen:
        return MaterialPageRoute(
          builder: (context) => const CongratulationsScreen(),
        );
    }
    return null;
  }
}