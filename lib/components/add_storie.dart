import 'package:flutter/material.dart';
import 'package:insta_copy/models/user.dart';

class CreateStories extends StatelessWidget {
  final User? user;
  const CreateStories({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16, top: 7),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: const Color.fromARGB(255, 214, 214, 214),
                backgroundImage: NetworkImage(
                  user!.imageUrl,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.add_circle_rounded,
                  color: Color.fromARGB(255, 34, 127, 202),
                ),
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
