import 'package:facebook/assets.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: dulqar, statusDisplay: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
