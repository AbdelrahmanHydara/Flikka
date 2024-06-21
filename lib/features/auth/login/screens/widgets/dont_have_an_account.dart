import 'package:flikka/core/helpers/extensions.dart';
import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccount  extends StatelessWidget {
  const DontHaveAnAccount ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account ? ",
          style: MyFonts.font16WhiteFaded,
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.registerScreen);
          },
          child: Text(
            "Sign Up",
            style: MyFonts.font16WhiteFaded.copyWith(
              color: MyColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
