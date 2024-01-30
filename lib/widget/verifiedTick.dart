import 'package:flutter/material.dart';

class VerifiedTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.shade500,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 12,
      ),
    );
  }
}
