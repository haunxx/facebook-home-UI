import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton(
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        headerButton(
            printText: "Go Live!",
            buttonIcon: Icons.video_call,
            labelText: "Live",
            iconColor: Colors.red.shade400),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        headerButton(
            printText: "Go to Album",
            buttonIcon: Icons.photo_library,
            labelText: "Photos",
            iconColor: Colors.green.shade400),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        headerButton(
            printText: "Go Romm",
            buttonIcon: Icons.video_call,
            labelText: "Room",
            iconColor: Colors.purple.shade400),
      ]),
    );
  }
}
