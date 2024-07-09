import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/extensions.dart';
import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return context.read<ChooseLanguageCubit>().selectedLanguage != null
        ? Padding(
      padding: EdgeInsets.only(
        bottom: 25.h,
        left: 20.w,
        right: 20.w,
      ),
      child: MyElevatedButton(
          text: "Continue",
          onPressed: () {
            context.read<ChooseLanguageCubit>().saveSelectedLanguage();
            context.pushNamed(Routes.loginScreen);
          }),
    )
        : const SizedBox();
  }
}
