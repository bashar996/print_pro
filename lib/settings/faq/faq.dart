import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/settings/faq/body.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FAQBody(),
    );
  }
}
