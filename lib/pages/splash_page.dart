import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, '/sign-in'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Union.png'))),
        ),
      ),
    );
  }
}
