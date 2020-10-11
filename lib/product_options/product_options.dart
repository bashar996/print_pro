import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/product_options/product_options_body.dart';

class ProductOptions extends StatefulWidget {
  @override
  _ProductOptionsState createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductOptionsBody(),
    );
  }
}
