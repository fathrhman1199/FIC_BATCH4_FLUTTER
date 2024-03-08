import 'package:flutter/material.dart';

class FICStackWidget extends StatelessWidget {
  const FICStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Stack"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 50,
                ),
                Positioned(
                    child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
