import 'package:flutter/material.dart';

class FICNavigatationPOPWidget extends StatefulWidget {
  const FICNavigatationPOPWidget({super.key});

  @override
  State<FICNavigatationPOPWidget> createState() =>
      _FICNavigatationPOPWidgetState();
}

class _FICNavigatationPOPWidgetState extends State<FICNavigatationPOPWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC Jago Flutter - Navigation pop'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go to Bacb Pop'),
            )
          ],
        ),
      ),
    );
  }
}
