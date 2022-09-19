import 'package:calculator_app_flutter/utils/dimensions.dart';
import 'package:flutter/material.dart';

// Widget for custom buttons
class ButtonColor extends StatelessWidget {
  final String? value;
  final onTap;
  Color? bgColor;
  Color textColor = Colors.white;

  ButtonColor.purple({Key? key, this.value, this.onTap}) : super(key: key) {
    bgColor = Colors.purple;
  }
  ButtonColor.purple200({Key? key, this.value, this.onTap}) : super(key: key) {
    bgColor = Colors.purple[200];
  }
  ButtonColor.grey({Key? key, this.value, this.onTap}) : super(key: key) {
    bgColor = Colors.grey[300];
    textColor = Colors.black54;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: Dimensions.ten * 5,
        width: Dimensions.ten * 5,
        margin: EdgeInsets.all(Dimensions.ten * 0.2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.ten),
          color: bgColor,
        ),
        child: Text(
          value!,
          style: TextStyle(color: textColor, fontSize: Dimensions.ten * 2.5),
        ),
      ),
    );
  }
}
