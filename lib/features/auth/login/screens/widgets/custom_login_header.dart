import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginHeader extends StatelessWidget {
  const CustomLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 190.w,
          child: const Image(
            image: AssetImage("assets/images/login.png"),
          ),
        ),
        verticalSpace(10),
        Text(
          "For free, join now and start learning",
          style: MyFonts.font22White,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
