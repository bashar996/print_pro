import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/search/search_body.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBody(),
    );
  }
}
