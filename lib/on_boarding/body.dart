import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:print_pro_hashtag/home_page/home_page.dart';
import 'package:print_pro_hashtag/login/login.dart';

class OnBoardingBody extends StatefulWidget {
  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Login()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFF9EC0F8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Welcome to Print Pro",
          body:
              "We are especially focused on providing the broadest possible types of print media, in addition to our knowledge and expertise of the print industry.",
          image: _buildImage('logo.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Products and Services",
          body:
              "R & R Printing provides print media and related services. We are especially focused on providing the broadest possible types of print media, in addition to our knowledge and expertise of the print industry.",
          image: _buildImage('print1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Competitive Comparison",
          body:
              "The print industry is competitive. The way we differ is to define the vision of the company to be a reliable and informative ally to our clients. Most printing companies can only afford a small variety of printing equipment, therefore can only offer a limited type of print media .",
          image: _buildImage('print2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fulfillment",
          body:
              "R & R Printing has established relationships with several trade-only print companies and paper distribution companies. Two of the trade-only print companies and three of the paper distribution companies have been selected as our primary vendors. We have been able to identify opportunities to capture margins of up to 45% for certain parties. Sourcing opportunities will be continually evaluated.",
          image: _buildImage('print3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
