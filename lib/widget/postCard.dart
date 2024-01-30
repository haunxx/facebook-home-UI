import 'package:facebook/assets.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/divider.dart';
import 'package:facebook/widget/verifiedTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  String avatar;
  String name;
  String publishedTime;
  String postTitle;
  String postImage;
  bool verfied;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedTime,
    required this.postTitle,
    required this.postImage,
    this.verfied = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
      ]),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue.shade700),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "368k")
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: "12.4k"),
                SizedBox(width: 5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: "2.1k"),
                SizedBox(width: 5),
                displayText(label: "Share"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label,
      style: TextStyle(color: Color.fromARGB(255, 90, 87, 87)),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(bottom: 5, left: 5),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(fontSize: 17),
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, statusDisplay: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 8,
          ),
          verfied ? VerifiedTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedTime),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey.shade600,
          ),
        ],
      ),
      trailing: Icon(Icons.more_horiz),
    );
  }
}
