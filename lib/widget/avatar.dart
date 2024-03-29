import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  bool statusDisplay;
  String displayImage;
  double dpSize;
  bool storyborder;

  Avatar({
    required this.displayImage,
     this.statusDisplay = false,
    this.dpSize = 45,
    this.storyborder = false,
  });
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    statusDisplay
        ? statusIndicator = Positioned(
            right: 1,
            bottom: 0,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
            ))
        : statusIndicator = SizedBox();

    return Stack(
      children: [
        Container(
            padding: EdgeInsets.only(left: 9),
            child: Container(
                    decoration: storyborder
                        ? BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2))
                        : BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        
                        displayImage,
                        width: dpSize,
                        height: dpSize,
                      ),
                    ),
                  )),
        statusIndicator,
      ],
    );
  }
}
