  import 'package:flutter/material.dart';

Widget button(
      {required String printText,
      required IconData buttonIcon,
      required String labelText,
      required Color iconColor}) {
    return TextButton.icon(
        onPressed: () {
          print(printText);
        },
        icon: Icon(
          buttonIcon,
          color: iconColor,
        ),
        label: Text(
          labelText,
          style: TextStyle(color: Colors.black),
        ));
  }