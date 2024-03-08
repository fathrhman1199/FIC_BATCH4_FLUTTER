import 'package:flutter/material.dart';

class FICWrapWidget extends StatelessWidget {
  FICWrapWidget({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.purple,
    Colors.deepPurple,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Wrap"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: colors.map((color) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.grey),
                        color: color,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset.zero,
                            blurRadius: 15,
                          )
                        ]),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
