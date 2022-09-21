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
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.pink,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: const Color.fromARGB(255, 214, 214, 214),
              backgroundImage: NetworkImage(
                user!.imageUrl,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            alignment: Alignment.center,
            width: 64,
            child: Text(
              user!.username,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
