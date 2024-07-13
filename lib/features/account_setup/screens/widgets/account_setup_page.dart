import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/shared_pref_helper.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSetupPage extends StatefulWidget {
  final List<Map<String, dynamic>> list;
  final String title;
  final int index;
  final bool withImage;
  final bool justText;
  final PageController pageController;

  const AccountSetupPage({
    super.key,
    required this.title,
    required this.index,
    required this.list,
    required this.withImage,
    required this.pageController,
    required this.justText,
  });

  @override
  State<AccountSetupPage> createState() => _AccountSetupPageState();
}

class _AccountSetupPageState extends State<AccountSetupPage> {
  String? accountSetupSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(20),
            _buildText(),
            verticalSpace(20),
            buildAccountSetupSelected(),
            verticalSpace(20),
            accountSetupSelected != null
                ? buildNextButton()
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Widget buildNextButton() {
    return Padding(
            padding: EdgeInsets.only(
              bottom: 25.h,
              left: 20.w,
              right: 20.w,
            ),
            child: MyElevatedButton(
                text: "Next",
                onPressed: () async {
                  await SharedPrefHelper.setData("accountSetupSelected${widget.index}", accountSetupSelected);
                  widget.pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }),
          );
  }

  Widget buildAccountSetupSelected() {
    return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: widget.list.length,
              itemBuilder: (context, index) {
                final selectedList = widget.list[index];
                final isSelected = accountSetupSelected == selectedList['name'];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      accountSetupSelected = selectedList['name'];
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? MyColors.mintColor : MyColors.fadedBlueColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        widget.justText
                            ? SizedBox.shrink()
                            : widget.withImage
                            ? CircleAvatar(
                            radius: 25.r,
                            backgroundColor: MyColors.primaryColor,
                            child: Image.asset(
                              selectedList['image']!,
                              width: 30.w,
                            )
                        )
                            : Text(
                          selectedList["flag"]!,
                          style: TextStyle(
                            fontSize: 34,
                          ),
                        ),
                        horizontalSpace(20),
                        Text(
                          selectedList["name"]!,
                          style: MyFonts.font24White,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          widget.pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
        },
        icon: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      title: Text(
        "Completed ${widget.index}/7",
        style: MyFonts.font22White,
      ),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        widget.title,
        style: MyFonts.font22White,
        textAlign: TextAlign.center,
      ),
    );
  }
}
