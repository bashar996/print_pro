import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/products/compose_product/compose_product_body.dart';

class ComposeProduct extends StatefulWidget {
  @override
  _ComposeProductState createState() => _ComposeProductState();
}

class _ComposeProductState extends State<ComposeProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ComposeProductBody(),
    );
  }
}
