import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/addresses/my_addresses_body.dart';

class MyAddresses extends StatefulWidget {
  @override
  _MyAddressesState createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyAddressesBody(),
    );
  }
}
