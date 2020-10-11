import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/products/body.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ProductBody(),
    );
  }
}
