import 'package:flutter/material.dart';

class FICGridViewWidget extends StatelessWidget {
  const FICGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - GridView"),
        actions: const [],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 185 / 243,
              children: [
                ...List.generate(
                    6,
                    (index) => Container(
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset.zero,
                                    blurRadius: 15.0)
                              ]),
                        ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
