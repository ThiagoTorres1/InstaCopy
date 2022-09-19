import 'package:flutter/material.dart';

class FriendStorie extends StatelessWidget {
  const FriendStorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/13623557/pexels-photo-13623557.jpeg?cs=srgb&dl=pexels-regina-trissteria-13623557.jpg&fm=jpg',
          ),
        ),
        const Icon(
          Icons.add_circle_rounded,
          color: Colors.blue,
        ),
        const SizedBox(height: 4),
        Container(
          alignment: Alignment.center,
          width: 64,
          child: const Text('Seu Story'),
        ),
      ],
    );
  }
}