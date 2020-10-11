import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/products/compose_product/fourth_option/fourth_option.dart';
import 'package:print_pro_hashtag/products/compose_product/third_option/third_option_item.dart';
import 'package:print_pro_hashtag/repositories/third_option_repository.dart';


class ThirdOption extends StatefulWidget {
  @override
  _ThirdOptionState createState() => _ThirdOptionState();
}

class _ThirdOptionState extends State<ThirdOption> {
  List <ThirdOptionRepository> options = [
    ThirdOptionRepository(itemName : 'pjsdhgfsdjkfhjds pjsdhgfsdjkfhjds pjsdhgf sdjkfhjds pjsdh gfsdjkfhjds pjsd hgfsdjkfhjds pjsdhgfsdjk fhjds pjsdhgfs djkfhjds '),
    ThirdOptionRepository(itemName : 'pjsdhgfsdjkfhjds'),
    ThirdOptionRepository(itemName : 'pjsdhgfsdjkfhjds'),
    ThirdOptionRepository(itemName : 'pjsdhgfsdjkfhjds'),
  ];

  int currentSelectedIndex ;
  bool didSelect = false;

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: Column(
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(10 , 30 , 20 , 20),
                scrollDirection: Axis.vertical,
                children: options.map((ThirdOptionRepository item) {
                  return ThirdOptionItem(
                    item: item.itemName,
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
                      builder: (context) => FourthOption())
                  ) : print ('disabled');
                },
                child: Text('Next',
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
