import 'package:flikka/core/components/my_arrow_back.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_login_header.dart';
import 'widgets/dont_have_an_account.dart';
import 'widgets/form_login.dart';
import 'widgets/sign_with_google.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 20.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomLoginHeader(),
                verticalSpace(20),
                const FormLogin(),
                const SignWithGoogle(),
                verticalSpace(16),
                const DontHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(context) {
    return AppBar(
      leading: const MyArrowBack(),
      title: Text(
        "Login",
        style: MyFonts.font22White,
      ),
    );
  }
}
