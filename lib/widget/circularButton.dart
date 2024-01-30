import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  IconData buttonIcon;
  void Function() buttonAction;
  Color iconColor;

  CircularButton(
      {required this.buttonIcon,
      required this.buttonAction,
      required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: Colors.grey.shade300, shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(buttonIcon, color: iconColor,),
        iconSize: 20,
        
      ),
    );
  }
}
