import 'package:facebook/assets.dart';
import 'package:facebook/section/headerButtonSection.dart';
import 'package:facebook/section/roomSection.dart';
import 'package:facebook/section/statusSection.dart';
import 'package:facebook/section/storySection.dart';
import 'package:facebook/widget/divider.dart';
import 'package:facebook/widget/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widget/circularButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              fontSize: 26,
              color: Color.fromARGB(255, 47, 147, 194),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("go to Search");
              },
              iconColor: Colors.black,
            ),
            CircularButton(
              buttonIcon: Icons.messenger,
              buttonAction: () {
                print("opened messenger");
              },
              iconColor: Colors.black,
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            lightDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mammookka,
              verfied: true,
              name: "Mammootty",
              publishedTime: "7h",
              postTitle: "On set!",
              postImage: mammoottypost,
            )
          ],
        ),
      ),
    );
  }
}
