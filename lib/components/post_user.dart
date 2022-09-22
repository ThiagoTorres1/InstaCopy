import 'package:flutter/material.dart';
import 'package:insta_copy/models/user.dart';

class PostUser extends StatelessWidget {
  final User? user;
  const PostUser({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
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
                  radius: 22,
                  backgroundColor: const Color.fromARGB(255, 214, 214, 214),
                  backgroundImage: NetworkImage(
                    user!.imageUrl,
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(user!.username),
                  subtitle: const Text('Onde a felicidade reina'),
                  trailing: const Icon(Icons.keyboard_control_outlined),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                user!.post[0],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, size: 30),
              SizedBox(width: 16),
              Icon(Icons.message_outlined, size: 30),
              SizedBox(width: 16),
              Icon(Icons.send_outlined, size: 30),
              SizedBox(width: 199),
              Icon(Icons.bookmark_border_rounded, size: 30),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Curtido por ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Thiago Torres ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'e ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'outras pessoas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 8),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${user!.username} ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: 'Viva la Vida - ColdPlay',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, bottom: 16),
          child: Text(
            'Ver todos os 62 comentário',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Há 13 horas ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: 'Ver tradução',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
