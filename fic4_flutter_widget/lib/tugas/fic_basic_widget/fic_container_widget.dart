import 'package:flutter/material.dart';

class FICContainerWidget extends StatelessWidget {
  const FICContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Container"),
        actions: const [],
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset.zero,
                  blurRadius: 15.0)
            ]),
      ),
    );
  }
}
