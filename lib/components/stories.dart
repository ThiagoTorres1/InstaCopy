import 'package:flutter/material.dart';
import 'package:insta_copy/components/add_storie.dart';
import 'package:insta_copy/components/friend_storie.dart';
import 'package:insta_copy/models/user_info.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 24),
      height: 130,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black26, width: 0.5),
          bottom: BorderSide(color: Colors.black26, width: 0.5),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: UserInfo.userCount,
        itemBuilder: (context, index) {
          if (index == 0) {
            return CreateStories(user: UserInfo.users[index]);
          }
          return FriendStorie(user: UserInfo.users[index]);
        },
      ),
    );
  }
}
