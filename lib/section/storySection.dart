import 'package:facebook/assets.dart';
import 'package:facebook/widget/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StoryCard(
            storyCover: dulqar,
            avatar: dulqar,
            storyAddButton: true,
            labelText: "Add To Story",
          ),
          StoryCard(
            storyCover: aliastory,
            avatar: alia,
            labelText: "Alia bhatt",
          ),
          StoryCard(
            storyCover: prithvistory,
            avatar: prithvi,
            labelText: "Prithviraj",
          ),
          StoryCard(
            storyCover: mammookkastory,
            avatar: mammookka,
            labelText: "Mammootty",
          ),
          StoryCard(
            storyCover: priyankasp,
            avatar: priyanka,
            labelText: "Priyanka chopra",
          ),
          StoryCard(
            storyCover: amalneerasdstory,
            avatar: amalneerad,
            labelText: "Amal Neerad",
          ),
        ],
      ),
    );
  }
}
