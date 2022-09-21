import 'package:flutter/material.dart';
import '../models/user.dart';

class BottomMenu extends StatelessWidget {
  final User? user;
  const BottomMenu({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black26, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.home, size: 32),
          const Icon(Icons.search, size: 32),
          const Icon(Icons.add_box_outlined, size: 32),
          const Icon(Icons.message_outlined, size: 32),
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
              user!.imageUrl,
            ),
          ),
        ],
      ),
    );
  }
}
