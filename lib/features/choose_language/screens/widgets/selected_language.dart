import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_colors.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_cubit.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedLanguage extends StatelessWidget {
  const SelectedLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
          builder: (context, state) {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: context.read<ChooseLanguageCubit>().languages.length,
                itemBuilder: (context, index) {
                  final language = context.read<ChooseLanguageCubit>().languages[index];
                  final isSelected = context.read<ChooseLanguageCubit>().selectedLanguage == language["code"];
                  return GestureDetector(
                    onTap: () {
                      context.read<ChooseLanguageCubit>().emitSelectedLanguage(index);
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
                        color: isSelected ? MyColors.primaryColor : MyColors
                            .fadedBlueColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          Text(
                            language["flag"]!,
                            style: TextStyle(
                              fontSize: 34,
                            ),
                          ),
                          horizontalSpace(20),
                          Text(
                            language["language"]!,
                            style: MyFonts.font24White,
                          ),
                        ],
                      ),
                    ),
                  );
                }
            );
  },
)
    );
  }
}
