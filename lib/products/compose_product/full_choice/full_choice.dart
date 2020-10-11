import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/products/compose_product/full_choice/full_choice_body.dart';

class FullChoice extends StatefulWidget {
  @override
  _FullChoiceState createState() => _FullChoiceState();
}

class _FullChoiceState extends State<FullChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FullChoiceBody(),
    );
  }
}
