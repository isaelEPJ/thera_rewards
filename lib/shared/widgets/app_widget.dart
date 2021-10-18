import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thera_rewards/modules/home/home_page.dart';
import 'package:thera_rewards/modules/signin/signin_page.dart';
import 'package:thera_rewards/modules/splash/splash_page.dart';
import 'package:thera_rewards/shared/models/user_model.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';
import 'package:thera_rewards/shared/themes/app_text_names.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTextNames.nameApp,
      theme: ThemeData(primaryColor: AppColors.whitePrimary),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => SignInPage(),
        '/home': (context) => HomePage(
            user: ModalRoute.of(context)!.settings.arguments as UserModel),
      },
    );
  }
}
