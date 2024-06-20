import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const MyElevatedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: MyFonts.font18White,
        ),
      ),
    );
  }
}
