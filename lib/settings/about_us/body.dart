import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutUsBody extends StatefulWidget {
  @override
  _AboutUsBodyState createState() => _AboutUsBodyState();
}

class _AboutUsBodyState extends State<AboutUsBody> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Container (
              padding: EdgeInsets.only(top : screenHeight * .14),
              height: screenHeight * .37,
              width: screenWidth,
              decoration: BoxDecoration (
                gradient: LinearGradient (
                  colors: [
                    Color(0xFFA6D5EE),
                    Color(0xFF9EC0F8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * .7,
                    child: Text (
                      'Print Pro',
                      textAlign: TextAlign.center,
                      style: TextStyle (
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top : screenHeight * .225),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/information.svg',
                  width: 150,
                  height: 150,),
              ),
            ),
            Container (
              padding: EdgeInsets.only(left: 10.0 , right: 10.0 , top : 50),
              height: 80,
              width: screenWidth,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton (
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon (Icons.arrow_back_ios,
                      color: Colors.white,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],

    );
  }
}
