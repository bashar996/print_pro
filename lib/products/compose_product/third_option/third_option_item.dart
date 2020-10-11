import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';


class ThirdOptionItem extends StatefulWidget {
  final String item;
  final int index;
  final onSelect;
  final bool isSelected;

  const ThirdOptionItem({Key key, this.item , this.isSelected , this.onSelect , this.index}) : super(key: key);

  @override
  _ThirdOptionItemState createState() => _ThirdOptionItemState();
}

class _ThirdOptionItemState extends State<ThirdOptionItem> {

  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = widget.isSelected;
    return GestureDetector(
      onTap: (){
        widget.onSelect();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        margin : EdgeInsets.only(bottom: 10),
        height: 75,
        decoration: BoxDecoration (
          color: widget.isSelected ? Colors.grey.withOpacity(0.3) : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row (
          children: [
            CircularCheckBox(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                value: checkBoxValue,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                onChanged: (bool x) {
                  setState(() {
                    checkBoxValue = !checkBoxValue;
                  });
                }
            ),
            Flexible(
              child: Text (
                widget.item,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle (
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
