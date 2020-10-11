import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/categories/category_list.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/login/login.dart';
import 'package:print_pro_hashtag/products/products_list.dart';
import 'package:print_pro_hashtag/search/search.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    PageController _pageController;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: 50),
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFA6D5EE),
            Color(0xFF9EC0F8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            height: 80,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 80,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 50,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 1.5,
                    spreadRadius: 1.5,
                  ),
                ]),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              child: TextField(
                onChanged: (val){
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Search();
                  }));
                },
                onTap: (){
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Search();
                  }));
                },
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  labelText: 'Search for our products ...',
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: kTextBlueColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: CategoryList(),
          ),
          Expanded(
            child: ProductsList(),
          ),
        ],
      ),
    );
  }
}
