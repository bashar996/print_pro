import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/on_boarding/on_boarding.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color(0xFF9EC0F8),
      statusBarIconBrightness: Brightness.dark));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnBoardingPage(),
    theme: ThemeData(
      primaryColor: Color(0xFF7ED0F1),
      accentColor: Color(0xFFFFFFFF),
    ),
  ));
}
