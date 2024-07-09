import 'package:flikka/core/components/my_arrow_back.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flikka/features/choose_language/cubit/choose_language_cubit.dart';
import 'package:flutter/material.dart';
import 'widgets/continue_button.dart';
import 'widgets/selected_language.dart';

class ChooseLanguageScreen extends StatelessWidget {

  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(20),
                _buildText(),
                verticalSpace(20),
                SelectedLanguage(),
                verticalSpace(20),
                ContinueButton(),
              ],
            );
          },
        ),
      ),
    );
  }

  Text _buildText() {
    return Text(
      "Choose a Language to learn",
      style: MyFonts.font22White,
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
