import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/features/auth/login/screens/login_screen.dart';
import 'package:flikka/features/auth/register/screens/register_screen.dart';
import 'package:flikka/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

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
    }
    return null;
  }
}