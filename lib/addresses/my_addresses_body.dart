import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/addresses/addresses_list.dart';
import 'add_address/add_address.dart';

class MyAddressesBody extends StatefulWidget {
  @override
  _MyAddressesBodyState createState() => _MyAddressesBodyState();
}

class _MyAddressesBodyState extends State<MyAddressesBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
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
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top : 10),
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height ,
                child: Stack(
                  children: [
                    AddressesList(),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return AddAddress();
                            }));
                          },
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
