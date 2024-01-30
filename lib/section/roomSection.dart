import 'package:facebook/assets.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.all(10),
      child: ListView(
        padding: EdgeInsets.only(left: 3, right: 3),
        scrollDirection: Axis.horizontal,
        children: [
          CreateRoomButton(),
          Avatar(displayImage: dulqar, statusDisplay: true),
          Avatar(displayImage: alia, statusDisplay: true),
          Avatar(displayImage: mammookka, statusDisplay: true),
          Avatar(displayImage: prithvi, statusDisplay: true),
          Avatar(displayImage: amalneerad, statusDisplay: true),
          Avatar(displayImage: priyadarshan, statusDisplay: true),
        ],
      ),
    );
  }

  Widget CreateRoomButton() {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.blue.shade300)),
      onPressed: () {
        print("Create Room!");
      },
      icon: Icon(
        Icons.video_call,
        color: Colors.purple.shade400,
      ),
      label: Text(
        "Create \n Room",
        style:
            TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.bold),
      ),
    );
  }
}
