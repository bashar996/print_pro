import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/on_boarding/on_boarding.dart';

void main() {
  runApp(
      MaterialApp (
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage(),
        theme: ThemeData (
          primaryColor: Color(0xFF7ED0F1),
          accentColor: Color(0xFFFFFFFF),
        ),
  ));
}
