import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/address_repository.dart';

import 'edit_address/edit_address.dart';

class AddressesItem extends StatefulWidget {
  final AddressRepository address ;

  const AddressesItem({Key key, this.address}) : super(key: key);
  @override
  _AddressesItemState createState() => _AddressesItemState();
}
class _AddressesItemState extends State<AddressesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * .9,
      height: 150,
      decoration: BoxDecoration (
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow (
            offset: Offset (1,1),
            spreadRadius: 2.0,
            blurRadius: 1.0,
            color: Colors.grey.withOpacity(0.4)
          ),
        ]
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text (
              widget.address.country,
          style: TextStyle (
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black54
          ),
          ),
          Text (
            widget.address.city,
            style: TextStyle (
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black54
            ),
          ),
          Text (
            widget.address.street,
            style: TextStyle (
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black54
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left : 8.0 , right: 8),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton (
                  onPressed: (){},
                  shape: RoundedRectangleBorder (
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.blue,
                  child: Text (
                    'Delete',
                    style: TextStyle (
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                FlatButton (
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return EditAddress (address: widget.address,);
                    }));
                  },
                  shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.blue,
                  child: Text (
                    'Edit',
                    style: TextStyle (
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
