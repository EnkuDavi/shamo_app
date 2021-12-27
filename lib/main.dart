import 'package:flutter/material.dart';
import 'package:shamo_app/pages/sign_page.dart';
import 'package:shamo_app/pages/signup_page.dart';
import 'package:shamo_app/pages/splash_page.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignPage(),
        '/sign-up': (context) => SignUpPage()
      },
    );
  }
}
