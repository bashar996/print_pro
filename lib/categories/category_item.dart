import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/repositories/category_repository.dart';

// ignore: must_be_immutable
class CategoryItem extends StatefulWidget {
  final CategoryRepository categoryItem;

  const CategoryItem({Key key, this.categoryItem}) : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.categoryItem.press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: <Widget>[
            Text(
              widget.categoryItem.title,
              style: widget.categoryItem.isActive
                  ? TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )
                  : TextStyle(fontSize: 13,
                color: Colors.black54,
              ),
            ),
            if (widget.categoryItem.isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
