import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class SignUpPage extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style:
                  primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shopping',
              style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget fullName() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: BackgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Username_Icon.png',
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Full Name',
                        hintStyle: subtitleTextStyle),
                  ))
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget Username() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: BackgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Password_Icon.png',
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Username',
                        hintStyle: subtitleTextStyle),
                  ))
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: BackgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Email_Icon.png',
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle),
                  ))
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                )),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: BackgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Password_Icon.png',
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Account Password',
                        hintStyle: subtitleTextStyle),
                  ))
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget SignUpButton() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: PrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: () {},
            child: Text('Sign Up',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: medium))),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign In',
                style: purpleTextStyle,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BackgroundColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                fullName(),
                Username(),
                emailInput(),
                passwordInput(),
                SignUpButton(),
                footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
