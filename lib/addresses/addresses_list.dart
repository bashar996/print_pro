import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/addresses/addresses_item.dart';
import 'package:print_pro_hashtag/repositories/address_repository.dart';

class AddressesList extends StatefulWidget {
  @override
  _AddressesListState createState() => _AddressesListState();
}

class _AddressesListState extends State<AddressesList> {
  List <AddressRepository> addresses = [
    AddressRepository(city: 'Latakia', country: 'Syria', street: 'Sport City Road' ),
    AddressRepository(city: 'Latakia', country: 'Syria', street: 'Sport City Road' ),
    AddressRepository(city: 'Latakia', country: 'Syria', street: 'Sport City Road' ),
    AddressRepository(city: 'Latakia', country: 'Syria', street: 'Sport City Road' ),
    AddressRepository(city: 'Latakia', country: 'Syria', street: 'Sport City Road' ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView (
      padding: EdgeInsets.only(bottom: 60),
      children: addresses.map((AddressRepository value ) {
        return AddressesItem(
        address: value,
        );
      }).toList(),
    );
  }
}
