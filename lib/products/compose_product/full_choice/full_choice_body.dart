import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/products/compose_product/full_choice/full_choice.dart';

class FullChoiceBody extends StatefulWidget {
  @override
  _FullChoiceBodyState createState() => _FullChoiceBodyState();
}

class _FullChoiceBodyState extends State<FullChoiceBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Column (
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.0 ),
            padding: EdgeInsets.only(left: 10.0, right: 10.0 ),
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
                  'Your Choice',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
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
          SizedBox(height: MediaQuery.of(context).size.height * .03,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left : 15.0 , bottom: 20 , top : 10),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text (
                                'Format',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle (
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Center(
                                child: Text (
                                  'widget.item.value',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle (
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container (height: 1,color: Colors.grey.withOpacity(0.6),),
                    Padding(
                      padding: const EdgeInsets.only(left : 15.0 , bottom: 20 , top : 10),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text (
                                'Paper Type',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle (
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Center(
                                child: Text (
                                  'widget.item.value',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle (
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container (height: 1,color: Colors.grey.withOpacity(0.6),),
                    Padding(
                      padding: const EdgeInsets.only(left : 15.0 , bottom: 20 , top : 10),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text (
                                'Color And Printing',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle (
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Center(
                                child: Text (
                                  'widget.item.value',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle (
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container (height: 1,color: Colors.grey.withOpacity(0.6),),
                    Padding(
                      padding: const EdgeInsets.only(left : 15.0 , bottom: 20 , top : 10),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text (
                                'Number',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle (
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width * .5,
                              child: Center(
                                child: Text (
                                  'widget.item.value',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle (
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container (height: 1,color: Colors.grey.withOpacity(0.6),),
                    SizedBox(height: MediaQuery.of(context).size.height * .05,),
                    Container (
                      height: 75,
                      width: MediaQuery.of(context).size.width * .8,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset (1,1),
                            spreadRadius: 2.0,
                            blurRadius: 2.0,
                            color: Colors.grey.withOpacity(0.6)
                          )
                        ],
                      ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                            'Earliest delivery date',
                            style: TextStyle (
                              color: kTextBlueColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text (
                            'Wednesday 14/10',
                            style: TextStyle (
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],

                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .05,),
                    Container (
                      height: 75,
                      width: MediaQuery.of(context).size.width * .8,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset (1,1),
                              spreadRadius: 2.0,
                              blurRadius: 2.0,
                              color: Colors.grey.withOpacity(0.6)
                          )
                        ],
                      ),
                      child: Column (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text (
                            'Complete order at 12:00 pm',
                            style: TextStyle (
                                color: kTextBlueColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text (
                            'Wednesday 14/10',
                            style: TextStyle (
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
              ),
          ),
          Container (
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    offset: Offset (1,1),
                    spreadRadius: 2.0,
                    blurRadius: 2.0,
                    color: Colors.grey.withOpacity(0.6)
                )
              ],
            ),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text ('Subtotal',
                    style: TextStyle (
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text ('Subtotal',
                      style: TextStyle (
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text ('VAT',
                      style: TextStyle (
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),
                    Text ('Subtotal',
                      style: TextStyle (
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                Container (
                  height: 1,
                  color: Colors.grey.withOpacity(0.6),
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text ('Total',
                      style: TextStyle (
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),
                    Text ('Subtotal',
                      style: TextStyle (
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => FullChoice())
                      );
                    },
                    child: Text('START ORDER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 19
                      ),),
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
