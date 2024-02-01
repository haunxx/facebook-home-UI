import 'package:facebook/assets.dart';
import 'package:facebook/section/ButtonSection.dart';
import 'package:facebook/section/roomSection.dart';
import 'package:facebook/section/statusSection.dart';
import 'package:facebook/section/storySection.dart';
import 'package:facebook/section/suggestionSection.dart';
import 'package:facebook/widget/divider.dart';
import 'package:facebook/widget/button.dart';
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
            ButtonSection(
              buttonOne: button(
                  printText: "Go live",
                  buttonIcon: Icons.video_call,
                  labelText: "Live",
                  iconColor: Colors.red.shade400),
              buttonTwo: button(
                  printText: "Go to Photos",
                  buttonIcon: Icons.photo_library,
                  labelText: "Photos",
                  iconColor: Colors.green.shade400),
              buttonThree: button(
                  printText: "create Room",
                  buttonIcon: Icons.video_call,
                  labelText: "Room",
                  iconColor: Colors.purple.shade400),
            ),
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
              likeCount: "463k",
              commentCount: "13.7k",
              shareCount: "2.1k",
            ),
            thickDivider,
            PostCard(
                avatar: prithvi,
                verfied: true,
                name: "Prithviraj Sukumaran",
                publishedTime: "12h",
                postTitle: "Cooking Empuran",
                postImage: prithvipost,
                likeCount: "324k",
                commentCount: "21.5k",
                shareCount: "3.1k"),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
                avatar: alia,
                verfied: true,
                name: "Aliabhatt",
                publishedTime: "2h",
                postTitle: "Working my Ass out ;)",
                postImage: aliapost,
                likeCount: "98k",
                commentCount: "4.6",
                shareCount: "5.1k"),
            thickDivider,
            PostCard(
                avatar: priyadarshan,
                verfied: true,
                name: "Priyadarshan",
                publishedTime: "1day",
                postTitle: "Soon",
                postImage: priyadarshanpost,
                likeCount: "12k",
                commentCount: "1.5k",
                shareCount: "364")
          ],
        ),
      ),
    );
  }
}
