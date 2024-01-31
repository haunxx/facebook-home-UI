import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  Widget buttonOne;
  Widget buttonTwo;
  Widget buttonThree;

  ButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

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
        buttonOne,
        VerticalDivider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        buttonTwo,
        VerticalDivider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
        buttonThree,
      ]),
    );
  }
}
