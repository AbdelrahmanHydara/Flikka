import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/extensions.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/routing/routes.dart';
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
      itemBuilder: (context,index) {
        final onboarding = OnBoardingModel.onboardingList[index];
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(100),
              SizedBox(
                height: 250.h,
                child: Image.asset(
                  onboarding.image,
                  fit: BoxFit.contain,
                ),
              ),
              verticalSpace(120),
              Text(
                onboarding.title,
                style: MyFonts.font22White,
              ),
              verticalSpace(12),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: Text(
                  onboarding.body,
                  textAlign: TextAlign.center,
                  style: MyFonts.font16WhiteFaded,
                ),
              ),
              verticalSpace(50),
              if(index == 0 || index == 1) const SizedBox()
              else MyElevatedButton(
                text: "Choose Language",
                onPressed: () {
                  context.pushNamed(Routes.chooseLanguage);
                },
              ),
            ],
          ),
        );
      }
    );
  }
}
