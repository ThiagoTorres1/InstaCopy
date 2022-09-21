import 'package:flutter/material.dart';
import 'package:insta_copy/components/add_storie.dart';
import 'package:insta_copy/components/bottom_menu.dart';
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
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
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
          Container(
            padding:
                const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 24),
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
          ),
          Column(
            children: [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.pink,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color.fromARGB(255, 214, 214, 214),
                    backgroundImage: NetworkImage(
                      'user!.imageUr',
                    ),
                  ),
                ),
                title: Text('Testando'),
                subtitle: Text('Arroz'),
              ),
              Divider(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(user: UserInfo.users[0]),
    );
  }
}
