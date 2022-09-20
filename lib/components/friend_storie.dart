import 'package:flutter/material.dart';
import '../models/user.dart';

class FriendStorie extends StatelessWidget {
  final User? user;
  const FriendStorie({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(
              user!.imageUrl,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            alignment: Alignment.center,
            width: 64,
            child: Text(user!.name),
          ),
        ],
      ),
    );
  }
}
