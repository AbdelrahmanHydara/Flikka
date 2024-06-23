import 'package:flutter/material.dart';

class MyArrowBack extends StatelessWidget {
  const MyArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
      Navigator.pop(context);
    },
      icon: const Icon(
        Icons.arrow_back_ios_outlined,
      ),
    );
  }
}
