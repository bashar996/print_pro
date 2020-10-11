import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/first_option_repository.dart';

class FirstOptionItem extends StatefulWidget {
  final FirstOptionRepository item;
  final int index;
  final bool isSelected;
  final onSelect;

  const FirstOptionItem({Key key, this.item , this.isSelected , this.onSelect , this.index}) : super(key: key);
  @override
  _FirstOptionItemState createState() => _FirstOptionItemState();
}

class _FirstOptionItemState extends State<FirstOptionItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onSelect();
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration (
          color: widget.isSelected ? Colors.grey.withOpacity(0.3) : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.item.image),
            Text(
              widget.item.name,
            ),
            Text(
              widget.item.description,
            )
          ],
        ),
      ),
    );
  }
}
