import 'package:flutter/material.dart';
import 'package:insta_copy/models/user.dart';
import 'package:insta_copy/models/user_info.dart';

class CreateStories extends StatelessWidget {
  final UserInfo? user;
  const CreateStories({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/13623557/pexels-photo-13623557.jpeg?cs=srgb&dl=pexels-regina-trissteria-13623557.jpg&fm=jpg'),
              ),
              Icon(
                Icons.add_circle_rounded,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Container(
            alignment: Alignment.center,
            width: 64,
            child: const Text('Seu Story'),
          ),
        ],
      ),
    );
  }
}
