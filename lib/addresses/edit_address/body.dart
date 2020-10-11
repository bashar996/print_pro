import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/address_repository.dart';

import '../../colors.dart';


class EditAddressBody extends StatefulWidget {
  final AddressRepository address;

  const EditAddressBody({Key key, this.address}) : super(key: key);
  @override
  _EditAddressBodyState createState() => _EditAddressBodyState();
}

class _EditAddressBodyState extends State<EditAddressBody> {
  @override
  Widget build(BuildContext context) {
    var spacing = MediaQuery.of(context).size.height * .03;
    return SafeArea(
      top: true,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0 , bottom: 10),
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.person_add,
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .04,
                    ),
                    Container (
                      height: 60,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow (
                              offset: Offset (1,1),
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 1.5,
                              spreadRadius: 1.5,
                            ),
                          ]
                      ),
                      child: Center(
                        child: TextField (
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration (
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText : widget.address.country,
                              prefixIcon: Icon(
                                Icons.location_city,
                                size: 25,
                                color: kTextBlueColor,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: spacing,
                    ),
                    Container (
                      height: 60,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow (
                              offset: Offset (1,1),
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 1.5,
                              spreadRadius: 1.5,
                            ),
                          ]
                      ),
                      child: Center(
                        child: TextField (
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration (
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText : widget.address.city,
                              prefixIcon: Icon(
                                Icons.local_convenience_store,
                                size: 25,
                                color: kTextBlueColor,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: spacing,
                    ),
                    Container (
                      height: 60,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow (
                              offset: Offset (1,1),
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 1.5,
                              spreadRadius: 1.5,
                            ),
                          ]
                      ),
                      child: Center(
                        child: TextField (
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration (
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText : widget.address.street,
                              prefixIcon: Icon(
                                Icons.streetview,
                                size: 25,
                                color: kTextBlueColor,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: spacing,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            height: 60,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
              color: kTextBlueColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
