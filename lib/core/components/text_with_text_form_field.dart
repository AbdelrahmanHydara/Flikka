import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWithTextFormField extends StatelessWidget {
  final String title, hintText;
  final TextEditingController controller;

  const TextWithTextFormField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            title,
            style: MyFonts.font16WhiteFaded,
          ),
        ),
        verticalSpace(10),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: MyFonts.font16GreyFaded,
            filled: true,
            fillColor: MyColors.fadedBlueColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}
