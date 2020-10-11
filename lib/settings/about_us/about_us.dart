import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/settings/about_us/body.dart';


class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AboutUsBody(),
    );
  }
}
