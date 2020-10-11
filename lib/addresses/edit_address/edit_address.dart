import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/addresses/edit_address/body.dart';
import 'package:print_pro_hashtag/repositories/address_repository.dart';

class EditAddress extends StatefulWidget {
  final AddressRepository address;

  const EditAddress({Key key, this.address}) : super(key: key);
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditAddressBody(address: widget.address,),
    );
  }
}
