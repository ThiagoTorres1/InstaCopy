import 'package:flutter/material.dart';
import 'package:insta_copy/components/add_storie.dart';
import 'package:insta_copy/components/friend_storie.dart';
import 'package:insta_copy/models/user_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              label: const Text(
                'Instagram',
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black87,
              size: 32,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black26, width: 1),
            bottom: BorderSide(color: Colors.black26, width: 1),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: UserInfo.userCount,
          itemBuilder: (context, index) {
            if (index == 0) {
              return CreateStories();
            }
            return FriendStorie(user: UserInfo.users[index]);
          },
        ),
      ),
    );
  }
}
