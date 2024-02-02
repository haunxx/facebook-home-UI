import 'package:facebook/assets.dart';
import 'package:facebook/widget/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                    cardPic: mammookka, mutuals: "7", name: "Mammookka"),
                SuggestionCard(cardPic: alia, name: "Alia bhatt", mutuals: "23")
              ],
            ),
          )
        ],
      ),
    );
  }
}
