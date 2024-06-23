import 'package:flikka/core/helpers/extensions.dart';
import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';

class AlreadyUser extends StatelessWidget {
  const AlreadyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already a user?",
          style: MyFonts.font16WhiteFaded,
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
          child: Text(
            "Login",
            style: MyFonts.font16WhiteFaded.copyWith(color: MyColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
