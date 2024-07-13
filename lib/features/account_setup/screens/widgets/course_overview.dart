import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/extensions.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseOverview extends StatelessWidget {
  final String language;
  final PageController pageController;

  const CourseOverview({super.key, required this.language, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            Text(
              "Course Overview",
              style: MyFonts.font22White,
            ),
            verticalSpace(10),
            Text(
              "Learn listening, speaking, reading and writing in ${language}",
              style: MyFonts.font16GreyLittleFaded,
            ),
            verticalSpace(20),
            Text(
              "Course Content :",
              style: MyFonts.font22White,
            ),
            verticalSpace(20),
            Row(
              children: [
                buildContentItem(
                    title: "9500+",
                    image: "assets/icons/docs.png",
                    body: "Words",
                ),
                horizontalSpace(20),
                buildContentItem(
                  title: "2100+",
                  image: "assets/icons/pen.png",
                  body: "Sentences",
                ),
              ],
            ),
            const Spacer(),
            MyElevatedButton(
              text: "Finish",
              onPressed: () {
                context.pushNamed(Routes.congratulationsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContentItem({required String title, body, image}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: MyColors.fadedBlueColor,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: MyColors.darkBlueColor,
              child: Image.asset(
                image,
                width: 38.w,
              ),
            ),
            verticalSpace(20),
            Text(
              title,
              style: MyFonts.font16WhiteFaded,
            ),
            verticalSpace(10),
            Text(
              body,
              style: MyFonts.font16GreyLittleFaded,
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
        icon: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      title: Text(
        "Completed 7/7",
        style: MyFonts.font22White,
      ),
    );
  }
}
