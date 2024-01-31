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
