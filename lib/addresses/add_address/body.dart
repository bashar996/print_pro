import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import '../../custom_widget.dart';


class AddAddressBody extends StatefulWidget {
  @override
  _AddAddressBodyState createState() => _AddAddressBodyState();
}

class _AddAddressBodyState extends State<AddAddressBody> {
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
                            'My Addresses',
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
                    inputTextField(
                      prefixIcon: Icons.location_city,
                      labelText: 'City',
                      context: context,
                      hasSuffix: false,
                      isSecure: false,
                      input: TextInputType.text,
                    ),
                    SizedBox(
                      height: spacing,
                    ),
                    inputTextField(
                      prefixIcon: Icons.local_convenience_store,
                      labelText: 'Country',
                      context: context,
                      hasSuffix: false,
                      isSecure: false,
                      input: TextInputType.text,
                    ),
                    SizedBox(
                      height: spacing,
                    ),
                    inputTextField(
                      prefixIcon: Icons.streetview,
                      labelText: 'Street',
                      context: context,
                      hasSuffix: false,
                      isSecure: false,
                      input: TextInputType.streetAddress,
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
                'Add',
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
