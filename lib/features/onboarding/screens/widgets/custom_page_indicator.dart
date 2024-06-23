import 'package:flikka/features/onboarding/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  final PageController pageController;
  const CustomPageIndicator({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 160.w,
      bottom: 370 .h,
      child: SmoothPageIndicator(
        controller: pageController,
        count: OnBoardingModel.onboardingList.length,
        effect: WormEffect(
          activeDotColor: Colors.orange,
          dotHeight: 10.h,
          dotWidth: 10.w,
        ),
      ),
    );
  }
}
