import 'package:flikka/core/components/my_arrow_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flikka/features/auth/login/screens/widgets/sign_with_google.dart';
import 'widgets/do_have_an_account.dart';
import 'widgets/form_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
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
                Text(
                  "Create an Account",
                  style: MyFonts.font22White,
                ),
                verticalSpace(25),
                const FormRegister(),
                const SignWithGoogle(),
                verticalSpace(16),
                const DoHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: const MyArrowBack(),
      title: Text(
        "Sign Up",
        style: MyFonts.font22White,
      ),
    );
  }
}
