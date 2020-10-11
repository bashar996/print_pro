import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:print_pro_hashtag/products/compose_product/first_option/first_option_item.dart';
import 'package:print_pro_hashtag/products/compose_product/second_option/second_option.dart';
import 'package:print_pro_hashtag/repositories/first_option_repository.dart';

class ComposeProductBody extends StatefulWidget {
  final VoidCallback onSelect;
  final bool isSelected;
  const ComposeProductBody({Key key, this.onSelect , this.isSelected}) : super(key: key);
  @override
  _ComposeProductBodyState createState() => _ComposeProductBodyState();
}

class _ComposeProductBodyState extends State<ComposeProductBody> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int currentSelectedIndex ;
  bool didSelect = false;
  List <FirstOptionRepository> firstOptionArray = [
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm' ),
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm' ),
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm'),
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm'),
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm'),
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm'),
    FirstOptionRepository(name: 'A5 Portrait' , image: 'assets/a5.png' ,description: '148 x 210 mm'),
  ];

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return SafeArea(
      bottom: true,
      top: false,
      child: Container(
        color: Colors.white,
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
                    'Choose Your Format',
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
              child: GridView.count (
                padding: EdgeInsets.only(left: 20 , right: 20 , top : 20 , bottom: 20),
                scrollDirection: Axis.vertical,
                childAspectRatio: 0.8,
                primary: true,
                shrinkWrap: true,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: firstOptionArray.map(( FirstOptionRepository product ) {
                  return FirstOptionItem (
                    item: product,
                    index: firstOptionArray.indexOf(product),
                    isSelected: currentSelectedIndex == firstOptionArray.indexOf(product),
                    onSelect: (){
                      setState(() {
                        didSelect = true;
                        currentSelectedIndex = firstOptionArray.indexOf(product);
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
                      builder: (context) => SecondOption())
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
