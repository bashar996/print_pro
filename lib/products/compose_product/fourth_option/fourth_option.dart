import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/products/compose_product/fourth_option/fourth_option_item.dart';
import 'package:print_pro_hashtag/products/compose_product/full_choice/full_choice.dart';
import 'package:print_pro_hashtag/repositories/fourth_option_repository.dart';

class FourthOption extends StatefulWidget {
  @override
  _FourthOptionState createState() => _FourthOptionState();
}

class _FourthOptionState extends State<FourthOption> {
  List <FourthOptionRepository> options = [
    FourthOptionRepository(value : 'pjsdhgfsdjkfhjds pjsdhgfsdjkfhjds pjsdhgf sdjkfhjds pjsdh gfsdjkfhjds pjsd hgfsdjkfhjds pjsdhgfsdjk fhjds pjsdhgfs djkfhjds ' , quantity : 5),
    FourthOptionRepository(value : 'pjsdhgfsdjkfhjds' , quantity : 10),
    FourthOptionRepository(value : 'pjsdhgfsdjkfhjds', quantity : 15),
    FourthOptionRepository(value : 'pjsdhgfsdjkfhjds', quantity : 25),
  ];

  int currentSelectedIndex ;
  bool didSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    'Choose Your Color And Printing',
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
            Container (
              width: MediaQuery.of(context).size.width * .9,
              margin: EdgeInsets.only(top: 30),
              height: 75,
              decoration: BoxDecoration (
                color: Colors.blue.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow (
                    offset: Offset (1,1),
                    spreadRadius: 2.0,
                    blurRadius: 2.0,
                    color: Colors.grey.withOpacity(0.6)
                  )
                ]
              ),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .4,
                      child: Center(
                        child: Text (
                          '#',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle (
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container (
                    width: 1,
                    color: Colors.white,
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Center(
                        child: Text (
                          'VAT',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle (
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(0 , 20 , 0 , 20),
                scrollDirection: Axis.vertical,
                children: options.map((FourthOptionRepository item) {
                  return FourthOptionItem(
                    item: item,
                    index: options.indexOf(item),
                    isSelected: currentSelectedIndex == options.indexOf(item),
                    onSelect: (){
                      setState(() {
                        didSelect = true;
                        currentSelectedIndex = options.indexOf(item);
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: didSelect ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10))
              ),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: (){
                  didSelect ? Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => FullChoice())
                  ) : print ('disabled');
                },
                child: Text('Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),),
              ),),
          ],
        ),
      ),
    );
  }
}
