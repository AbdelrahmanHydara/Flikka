import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flikka/features/onboarding/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageView extends StatelessWidget {
  final PageController pageController;
  const CustomPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      itemCount: OnBoardingModel.onboardingList.length,
      itemBuilder: (context,index) =>
          buildOnBoardItem(OnBoardingModel.onboardingList[index], context),
    );
  }

  Widget buildOnBoardItem(OnBoardingModel onBoardingModel,context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(100),
        SizedBox(
          height: 250.h,
          child: Image.asset(
              onBoardingModel.image,
              fit: BoxFit.contain,
          ),
        ),
        verticalSpace(100),
        Text(
          onBoardingModel.title,
          style: MyFonts.font22White,
        ),
        verticalSpace(10),
        Text(
          onBoardingModel.body,
          textAlign: TextAlign.center,
          style: MyFonts.font16WhiteFaded,
        ),
        verticalSpace(50),
        MyElevatedButton(
          text: "Choose Language",
          onPressed: () {},
        ),
        verticalSpace(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already a user?",
              style: MyFonts.font16WhiteFaded,
            ),
            horizontalSpace(5),
            Text(
              "Login",
              style: MyFonts.font16WhiteFaded.copyWith(color: MyColors.primaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
