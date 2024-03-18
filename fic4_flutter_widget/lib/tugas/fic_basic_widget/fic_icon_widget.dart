import 'package:flutter/material.dart';

class FICIconWidget extends StatelessWidget {
  const FICIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Icon Widget"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.share,
              size: 30.0,
            ),
            Icon(
              Icons.favorite,
              size: 36.0,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
