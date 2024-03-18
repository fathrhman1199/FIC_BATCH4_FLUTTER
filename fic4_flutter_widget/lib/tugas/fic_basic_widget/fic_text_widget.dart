import 'package:flutter/material.dart';

class FICTextwidget extends StatelessWidget {
  const FICTextwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC Jago Flutter - Text"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: const Column(
          children: [
            Text(
              "Discover the most modern furniture",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            )
          ],
        ),
      ),
    );
  }
}
