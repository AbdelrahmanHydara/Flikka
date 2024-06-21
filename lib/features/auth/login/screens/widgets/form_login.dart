import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/components/text_with_text_form_field.dart';
import 'package:flikka/core/helpers/spacing.dart';
import 'package:flikka/core/theming/my_fonts.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithTextFormField(
          title: "Email Address",
          hintText: "Enter Your Email Address",
          controller: TextEditingController(),
        ),
        verticalSpace(20),
        TextWithTextFormField(
          title: "Password",
          hintText: "Enter Your Password",
          controller: TextEditingController(),
        ),
        verticalSpace(20),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Text(
            "Forgot Password ?",
            style: MyFonts.font16WhiteFaded,
          ),
        ),
        verticalSpace(20),
        MyElevatedButton(
          text: "Login",
          onPressed: () {

          },
        ),
      ],
    );
  }
}
