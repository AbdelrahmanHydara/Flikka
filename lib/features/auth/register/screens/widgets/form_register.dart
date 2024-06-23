import 'package:flutter/material.dart';
import 'package:flikka/core/components/my_elevated_button.dart';
import 'package:flikka/core/components/text_with_text_form_field.dart';
import 'package:flikka/core/helpers/spacing.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithTextFormField(
          title: "UserName",
          hintText: "Enter Your UserName",
          controller: TextEditingController(),
        ),
        verticalSpace(20),
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
        TextWithTextFormField(
          title: "Password Confirmation",
          hintText: "Re-Enter Your Password",
          controller: TextEditingController(),
        ),
        verticalSpace(40),
        MyElevatedButton(
          text: "Sign Up",
          onPressed: () {

          },
        ),
      ],
    );
  }
}
