import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';
import 'package:shamo_app/widgets/product_cards.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo Eko',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  '@enkudavi',
                  style: subtitleTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/group.png'))),
          )
        ]),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: PrimaryColor),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: subtitleColor),
                    color: TransparentColor),
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: subtitleColor),
                    color: TransparentColor),
                child: Text(
                  'Futsal',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: subtitleColor),
                    color: TransparentColor),
                child: Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: subtitleColor),
                    color: TransparentColor),
                child: Text(
                  'Football',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Text(
          'Popular Product',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [ProductCard(), ProductCard(), ProductCard()],
              )
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProducts()
      ],
    );
  }
}
