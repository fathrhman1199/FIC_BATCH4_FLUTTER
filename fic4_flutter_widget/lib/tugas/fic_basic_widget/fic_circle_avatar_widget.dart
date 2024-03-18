import 'package:flutter/material.dart';

class FICCircleAvatarWidget extends StatelessWidget {
  FICCircleAvatarWidget({super.key});

  final List<Color> colors = [
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - CircleAvatarWidget"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.ibb.co/PGv8ZzG/me.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                    colors.length,
                    (index) => CircleAvatar(
                          radius: 40,
                          backgroundColor: colors[index],
                        ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
