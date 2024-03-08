import 'package:flutter/material.dart';

class FICAspecRatioWidget extends StatelessWidget {
  const FICAspecRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JagoFlutter - Aspec Ratio"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
