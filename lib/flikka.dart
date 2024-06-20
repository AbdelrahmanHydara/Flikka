import 'package:flikka/core/routing/my_router.dart';
import 'package:flikka/core/routing/routes.dart';
import 'package:flikka/core/theming/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlikkaApp extends StatelessWidget {

  const FlikkaApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 820),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: MyRouter.generateRoute,
        themeMode: ThemeMode.system,
        theme: MyTheme.darkTheme,
      ),
    );
  }
}