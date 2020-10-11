import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/fourth_option_repository.dart';

class FourthOptionItem extends StatefulWidget {
  final FourthOptionRepository item;
  final int index;
  final onSelect;
  final bool isSelected;

  const FourthOptionItem({Key key, this.item, this.index, this.onSelect, this.isSelected}) : super(key: key);
  @override
  _FourthOptionItemState createState() => _FourthOptionItemState();
}

class _FourthOptionItemState extends State<FourthOptionItem> {
  int currentSelectedIndex ;
  bool didSelect = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onSelect();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .9,
            margin : EdgeInsets.only(bottom: 10),
            height: 75,
            decoration: BoxDecoration (
              color: widget.isSelected ? Colors.grey.withOpacity(0.3) : Colors.white,
              border: widget.isSelected ? Border.all(color: Colors.blue , width: 1) : Border.all(color: Colors.white , width: 1),
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
                        '${widget.item.quantity}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle (
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container (
                  width: 1,
                  color: Colors.blue,
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Center(
                      child: Text (
                        widget.item.value,
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
        ],
      ),
    );
  }
}
