import 'package:flikka/core/helpers/constants.dart';
import 'package:flikka/core/helpers/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'widgets/account_setup_page.dart';
import 'widgets/course_overview.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({super.key});

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  PageController pageController = PageController();
  String toLearnLanguage = '';

  Future getToLearnLanguage() async {
    toLearnLanguage = await SharedPrefHelper.getString(SharedPrefKeys.selectedLanguage);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getToLearnLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        AccountSetupPage(
          index: 1,
          title: 'What Is Your Mother Language?',
          withImage: false,
          justText: false,
          list: Lists.languagesList,
          pageController: pageController,
        ),
        AccountSetupPage(
          index: 2,
          withImage: true,
          justText: false,
          title: 'What Is The Main Reason to Learn ${toLearnLanguage}?',
          list: Lists.reasonList,
          pageController: pageController,
        ),
        AccountSetupPage(
          index: 3,
          withImage: true,
          justText: false,
          title: 'How much you know about ${toLearnLanguage}?',
          list: Lists.levelsList,
          pageController: pageController,
        ),
        AccountSetupPage(
          index: 4,
          withImage: false,
          justText: true,
          title: 'How old are you?',
          list: Lists.agesList,
          pageController: pageController,
        ),
        AccountSetupPage(
          index: 5,
          withImage: true,
          justText: false,
          title: 'How much time do you want to learn ${toLearnLanguage}?',
          list: Lists.timesList,
          pageController: pageController,
        ),
        AccountSetupPage(
          index: 6,
          withImage: false,
          justText: true,
          title: 'How did you hear about Flikka?',
          list: Lists.socialsList,
          pageController: pageController,
        ),
        CourseOverview(
          language: toLearnLanguage,
          pageController: pageController,
        ),
      ],
    );
  }
}
