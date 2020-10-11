import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/addresses/add_address/body.dart';


class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddAddressBody(),
    );
  }
}
