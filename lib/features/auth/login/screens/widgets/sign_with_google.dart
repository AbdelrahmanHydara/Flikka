import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignWithGoogle extends StatelessWidget {
  const SignWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
                indent: 40.w,
                endIndent: 10,
              ),
            ),
            Text(
              "Or Sign In With",
              style: MyFonts.font16GreyFaded,
            ),
            Flexible(
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
                indent: 10,
                endIndent: 40.w,
              ),
            ),
          ],
        ),
        verticalSpace(16),
        CircleAvatar(
          radius: 25.r,
          backgroundColor: MyColors.fadedBlueColor,
          child: Image.asset(
              "assets/images/google.png",
            width: 30.w,
          ),
        ),
      ],
    );
  }
}
