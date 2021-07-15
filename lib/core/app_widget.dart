import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background
      ),
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => SplashPage(),
        '/login' : (context) => LoginPage(),
        '/home' : (context) => HomePage()
      }
    );
  }
}
