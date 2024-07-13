import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(150),
            Image.asset(
                "assets/icons/cracker.png",
              width: MediaQuery.of(context).size.width * .6.w,
            ),
            verticalSpace(20),
            Text(
              "Congratulations!",
              style: MyFonts.font22White,
            ),
            verticalSpace(10),
            Text(
              "You are set and ready to start using Flikka!",
              style: MyFonts.font16GreyLittleFaded,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: MyElevatedButton(
                onPressed: () {
                  
                },
                text: "Start",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
