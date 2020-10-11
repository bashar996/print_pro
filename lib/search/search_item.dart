import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';


class SearchItem extends StatefulWidget {
  final ProductRepository product;

  const SearchItem({Key key, this.product}) : super(key: key);
  @override
  _SearchItemState createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 10),
          height: 70,
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text (
                    widget.product.name,
                    style: TextStyle (
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text (
                    widget.product.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle (
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                color: Colors.grey,),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
        color: Colors.grey,)
      ],
    );
  }
}
