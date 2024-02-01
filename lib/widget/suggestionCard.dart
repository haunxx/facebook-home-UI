import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          children: [
            suggestionPic(),
            suggestionDetails(),
            iconButton(),
          ],
        ));
  }

  Widget iconButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.person_add,
              color: Colors.white,
            ),
            label: Text(
              "Add friend",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        OutlinedButton(onPressed: () {}, child: Text("Remove"))
      ],
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
            height: 150,
            color: Colors.grey.shade200,
            child: ListTile(
              title: Text(
                "Dulqar",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "4 mutuals",
                textAlign: TextAlign.center,
              ),
            )));
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
          dulqar,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
