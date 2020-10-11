import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:print_pro_hashtag/repositories/faq_repository.dart';
import 'package:print_pro_hashtag/settings/faq/faq_item.dart';

class FAQBody extends StatefulWidget {
  @override
  _FAQBodyState createState() => _FAQBodyState();
}

class _FAQBodyState extends State<FAQBody> {
  List<FAQRepository> faqArray = [
    FAQRepository(question: 'what ?' , answer: 'IDK'),
    FAQRepository(question: 'what what what what what what ?' , answer: ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '),
    FAQRepository(question: 'what ?' , answer: 'IDK'),
    FAQRepository(question: 'what what what what what what ?' , answer: ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '),
    FAQRepository(question: 'what ?' , answer: 'IDK'),
    FAQRepository(question: 'what what what what what what ?' , answer: ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '),
    FAQRepository(question: 'what ?' , answer: 'IDK'),
    FAQRepository(question: 'what what what what what what ?' , answer: ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '),
    FAQRepository(question: 'what ?' , answer: 'IDK'),
    FAQRepository(question: 'what what what what what what ?' , answer: ' IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDKIDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK  IDK '
        ' IDK  IDK  IDK  IDK  IDK  IDK  IDK'),
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Container (
              padding: EdgeInsets.only(top : screenHeight * .14),
              height: screenHeight * .37,
              width: screenWidth,
              decoration: BoxDecoration (
                gradient: LinearGradient (
                  colors: [
                    Color(0xFFA6D5EE),
                    Color(0xFF9EC0F8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * .7,
                    child: Text (
                      'How Can We Help You?',
                      textAlign: TextAlign.center,
                      style: TextStyle (
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top : screenHeight * .285),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/faq.svg',
                  width: 125,
                  height: 125,),
              ),
            ),
            Container (
              padding: EdgeInsets.only(left: 10.0 , right: 10.0 , top : 50),
              height: 80,
              width: screenWidth,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton (
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon (Icons.arrow_back_ios,
                      color: Colors.white,),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded (
          child: ListView (
            padding: EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            children: faqArray.map((FAQRepository item) {
              return FAQItem(item: item,);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
