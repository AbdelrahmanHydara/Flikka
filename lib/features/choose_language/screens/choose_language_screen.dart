import 'package:flikka/core/components/my_arrow_back.dart';
import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/selected_language.dart';

class ChooseLanguageScreen extends StatelessWidget {

  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(20),
            Text(
              "Choose a Language to learn",
              style: MyFonts.font22White,
            ),
            verticalSpace(20),
            const SelectedLanguage(),
            verticalSpace(20),
            context.read<ChooseLanguageCubit>().selectedLanguage != null
                ? BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: 25.h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: MyElevatedButton(
                      text: "Continue",
                      onPressed: () {

                      }),
                );
              })
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: const MyArrowBack(),
      title: Text(
        "Choose Language",
        style: MyFonts.font22White,
      ),
    );
  }
}
