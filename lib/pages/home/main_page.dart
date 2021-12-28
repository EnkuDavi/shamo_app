import 'package:flutter/material.dart';
import 'package:shamo_app/pages/home/chat_page.dart';
import 'package:shamo_app/pages/home/home_page.dart';
import 'package:shamo_app/pages/home/profile_page.dart';
import 'package:shamo_app/pages/home/wishlist_page.dart';
import 'package:shamo_app/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: SecondaryColor,
        child: Image.asset(
          'assets/cart-light.png',
          width: 20,
        ),
      );
    }

    Widget customeBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: BackgroundColor3,
              currentIndex: currentIndex,
              onTap: (value) {
                print(value);
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/Home.png',
                        width: 21,
                        color:
                            currentIndex == 0 ? PrimaryColor : BottomMenuColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                        right: 40,
                      ),
                      child: Image.asset(
                        'assets/chat-icon.png',
                        width: 21,
                        color:
                            currentIndex == 1 ? PrimaryColor : BottomMenuColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                        left: 40,
                      ),
                      child: Image.asset(
                        'assets/wishlist.png',
                        width: 21,
                        color:
                            currentIndex == 2 ? PrimaryColor : BottomMenuColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/Profile.png',
                        width: 21,
                        color:
                            currentIndex == 3 ? PrimaryColor : BottomMenuColor,
                      ),
                    ),
                    label: '')
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: BackgroundColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customeBottomNav(),
      body: body(),
    );
  }
}
