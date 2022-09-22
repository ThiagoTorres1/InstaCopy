import 'package:flutter/material.dart';
import 'package:insta_copy/components/bottom_menu.dart';
import 'package:insta_copy/components/post_user.dart';
import 'package:insta_copy/components/stories.dart';
import 'package:insta_copy/models/user_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
      body: ListView(
        children: [
          const Stories(),
          PostUser(user: UserInfo.users[4]),
          PostUser(user: UserInfo.users[6]),
        ],
      ),
      bottomNavigationBar: BottomMenu(user: UserInfo.users[0]),
    );
  }
}
