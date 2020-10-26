import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/cart/cart_page.dart';
import 'package:print_pro_hashtag/settings/settings.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/home_page/body.dart';
import 'package:print_pro_hashtag/notification/notification_page.dart';
import 'package:print_pro_hashtag/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textSize = 12.0;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Stack(alignment: Alignment.topRight, children: [
          Icon(
            Icons.shopping_cart,
            color: Theme.of(context).accentColor,
          ),
          CircleAvatar(
            radius: 5,
            backgroundColor: Colors.red,
          )
        ]),
        backgroundColor: kTextBlueColor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
      ),
      backgroundColor: Colors.transparent,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomeBody(),
            ProfilePage(),
            NotificationPage(),
            Settings(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFA6E5EE),
              Color(0xFF9EC0F8),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: BottomNavyBar(
            showElevation: false,
            backgroundColor: Colors.transparent,
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  activeColor: Colors.white60,
                  inactiveColor: Colors.white,
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: kTextBlackColor,
                        letterSpacing: 0.8,
                        fontSize: textSize),
                  ),
                  icon: Icon(Icons.home)),
              BottomNavyBarItem(
                  activeColor: Colors.white60,
                  inactiveColor: Colors.white,
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: textSize,
                      color: kTextBlackColor,
                      letterSpacing: 0.8,
                    ),
                  ),
                  icon: Icon(Icons.person_pin)),
              BottomNavyBarItem(
                  activeColor: Colors.white60,
                  inactiveColor: Colors.white,
                  title: Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: textSize,
                      color: kTextBlackColor,
                      letterSpacing: 0.8,
                    ),
                  ),
                  icon: Icon(Icons.notifications_none)),
              BottomNavyBarItem(
                  activeColor: Colors.white60,
                  inactiveColor: Colors.white,
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: textSize,
                      color: kTextBlackColor,
                      letterSpacing: 0.8,
                    ),
                  ),
                  icon: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}
