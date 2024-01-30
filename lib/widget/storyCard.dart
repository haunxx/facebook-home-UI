import 'package:facebook/assets.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  String storyCover;
  bool storyAddButton;
  String avatar;
  String labelText;

  StoryCard({
    required this.storyCover,
    this.storyAddButton = false,
    required this.avatar,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 125,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(storyCover), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 4,
              left: -2,
              child: storyAddButton
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {
                        print(labelText);
                      },
                      iconColor: Colors.blue.shade300,
                    )
                  : Avatar(
                      displayImage: avatar,
                      statusDisplay: false,
                      smalldp: true,
                      storyborder: true,
                    )),
          Positioned(
              bottom: 6,
              left: 6,
              child: Text(
                labelText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 13),
              ))
        ],
      ),
    );
  }
}
