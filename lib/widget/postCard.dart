import 'package:facebook/assets.dart';
import 'package:facebook/section/ButtonSection.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/button.dart';
import 'package:facebook/widget/divider.dart';
import 'package:facebook/widget/verifiedTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedTime;
  final String postTitle;
  final String postImage;
  final bool verfied;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedTime,
    required this.postTitle,
    required this.postImage,
    this.verfied = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        lightDivider,
        ButtonSection(
          buttonOne: button(
              printText: "Liked!",
              buttonIcon: Icons.thumb_up_outlined,
              labelText: "Like",
              iconColor: Colors.grey.shade500),
          buttonTwo: button(
              printText: "Comment!",
              buttonIcon: Icons.comment_outlined,
              labelText: "Comment",
              iconColor: Colors.grey.shade500),
          buttonThree: button(
              printText: "Shared!",
              buttonIcon: Icons.share_outlined,
              labelText: "Share",
              iconColor: Colors.grey.shade500),
        )
      ]),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 45,
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
                  width: 10,
                ),
                displayText(label: likeCount)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "Share"),
                Avatar(
                  displayImage: avatar,
                  dpSize: 20,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
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
      padding: EdgeInsets.only(bottom: 5, left: 15),
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
            style: TextStyle(fontWeight: FontWeight.w500),
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
