import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:print_pro_hashtag/products/compose_product/compose_product.dart';

class ProductBody extends StatefulWidget {
  @override
  _ProductBodyState createState() => _ProductBodyState();
}

int currentIndex = 0;
int selectedItem = 0;

class _ProductBodyState extends State<ProductBody> {
  SwiperController _swiperController = new SwiperController();
  List<String> offersArr = ["Performing hot reload... Syncing files to device iPhone 11 Pro Max..."
      "Reloaded 18 of 963 libraries in 2,634ms." , "Performing hot reload... Syncing files to device iPhone 11 Pro Max..."
      "Reloaded 18 of 963 libraries in 2,634ms. " , "Performing hot reload... Syncing files to device iPhone 11 Pro Max..."
      "Reloaded 18 of 963 libraries in 2,634ms."];
  List<String> imagesArr = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png"
  ];
  List <bool> selectedImage = [];

  @override
  void initState() {
    for (int i = 0 ; i < imagesArr.length ; i++){
      selectedImage.add(false);
    }
    selectedImage[0] = true;
    _swiperController.index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children : [
                        Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .45,
                        color: Colors.white,
                        child: Swiper(
                          autoplay: false,
                          controller: _swiperController,
                          itemCount: imagesArr.length,
                          itemBuilder: (BuildContext context, int index) {
                            return new Image.asset(
                              imagesArr[index],
                            );
                          },
                          control: new SwiperControl(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                        Container (
                          margin: EdgeInsets.only(top: 60 , left: 20 , right: 20),
                          height: 30,
                          width: screenWidth,
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blue,
                                ),
                                child: IconButton (
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 15,),
                                ),
                              ),
                              Row (
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blue,
                                    ),
                                    child: IconButton (
                                      icon: Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.white,
                                        size: 15,),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),],

                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                      width: screenWidth,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: imagesArr.map((String image) {
                          return Stack(
                            children: [
                              Image.asset(
                                image,
                                height: 50,
                                width: 50,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedItem = imagesArr.indexOf(image);
                                    _swiperController.move(imagesArr.indexOf(image));
                                    for (int i = 0 ; i < imagesArr.length ; i++) {
                                      i == selectedItem ? selectedImage[i] = true : selectedImage[i] = false;
                                    }
                                  });
                                },
                                child:
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: selectedImage[imagesArr.indexOf(image)] ? Colors.grey : Colors.transparent, width: 1)),

                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration (
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset (1 , 1),
                                color: Colors.blue.withOpacity(0.6),
                                spreadRadius: 3.0,
                                blurRadius: 1.0
                            )
                          ],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,
                              topLeft: Radius.circular(10))
                      ),
                      child: SingleChildScrollView (
                        scrollDirection: Axis.vertical,
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container (
                              margin : EdgeInsets.only(top : 20 , left: 15),
                              width: screenWidth,
                              height: 40,
                              child: Text (
                                'Product ',
                                style: TextStyle (
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left : 15.0 , right: 15 , bottom: 15),
                              child: Text (
                                'sh sdh fjsh sdjkhf sdhf jsdhf kjsdhf kjshdf jhsdkhfshdf ksdh'
                                    'fsdjkfsdjkhf fh sjdhf dhfdf sdjfhjds jfsdfjksd'
                                    'kslhfl dsfhds f sdhfds lfhds s sh sdh fjsh sdjkhf sdhf jsdhf kjsdhf kjshdf jhsdkhfshdf ksdh'
                                    'sh sdh fjsh sdjkhf sdhf jsdhf kjsdhf kjshdf jhsdkhfshdf ksdh'
                                    'sh sdh fjsh sdjkhf sdhf jsdhf kjsdhf kjshdf jhsdkhfshdf ksdh',
                                maxLines: 10,
                                style: TextStyle (
                                  color: Colors.black54,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container (
                              margin : EdgeInsets.only(top : 0 , left: 15),
                              width: screenWidth,
                              height: 40,
                              child: Text (
                                'Special Offers ',
                                style: TextStyle (
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Column (
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: offersArr.map((String value)  {
                                return Container (
                                  margin: EdgeInsets.fromLTRB(20 , 10 ,20 ,10 ),
                                  width: screenWidth * .9,
                                  height: 70,
                                  decoration: BoxDecoration (
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow (
                                          offset: Offset (1,1),
                                          blurRadius: 1.0,
                                          spreadRadius: 1.0,
                                          color: Colors.grey,
                                        ),
                                      ]
                                  ),
                                  child: Row (
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        width: screenWidth * .65,
                                        child: Text (
                                          value,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Container (
                                        width: 1,
                                        color: Colors.blue,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text ('150 SR',
                                                style: TextStyle (
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              Container(
                                                height: 30,
                                                child: FlatButton (
                                                  onPressed: (){},
                                                  shape: RoundedRectangleBorder (
                                                      borderRadius: BorderRadius.circular(10)
                                                  ),
                                                  color: Colors.green.withOpacity(0.8),
                                                  child: Text (
                                                    'Get',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container (
              height: 50,
              width: screenWidth,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ComposeProduct();
                      }));
                },
                color: Colors.blueAccent,
                child: Text (
                  'Compose Your Own Options',
                  style: TextStyle (
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
