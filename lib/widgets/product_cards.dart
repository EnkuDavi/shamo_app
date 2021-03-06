import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class ProductCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xffECEDEF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/shoes-1.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'COURT VERSION 2.0',
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$58,67',
                  style:
                      priceTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
