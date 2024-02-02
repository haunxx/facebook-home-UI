import 'package:facebook/assets.dart';
import 'package:facebook/widget/verifiedTick.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String cardPic;
  final String mutuals;
  final String name;

  SuggestionCard(
      {required this.cardPic, required this.name, required this.mutuals});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: [
            suggestionPic(),
            suggestionDetails(),
          ],
        ));
  }

  Widget iconButton() {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.person_add,
        color: Colors.white,
      ),
      label: Text(
        "Add Friend",
        style: TextStyle(color: Colors.white),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget removeButton() {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.grey.shade300),
        onPressed: () {},
        child: Text(
          "Remove",
          style: TextStyle(color: Colors.black),
        ));
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 150,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            ListTile(
              title: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                mutuals + " mutuals",
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [iconButton(), removeButton()],
            )
          ],
        ),
      ),
    );
  }

  Widget suggestionPic() {
    return Positioned(
      height: 240,
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          cardPic,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
