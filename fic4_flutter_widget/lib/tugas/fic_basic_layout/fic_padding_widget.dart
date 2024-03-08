import 'package:flutter/material.dart';

class FICPaddingWidget extends StatelessWidget {
  const FICPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Padding"),
      ),
      body: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 30,
                bottom: 40,
              ),
              child: Text(
                "kategori",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
