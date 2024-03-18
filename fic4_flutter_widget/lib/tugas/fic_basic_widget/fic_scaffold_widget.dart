import 'package:flutter/material.dart';

class FICScaffoldWidget extends StatefulWidget {
  const FICScaffoldWidget({super.key});

  @override
  State<FICScaffoldWidget> createState() => _FICScaffoldWidgetState();
}

class _FICScaffoldWidgetState extends State<FICScaffoldWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC Jago Flutter - Scaffold , Appbar"),
        actions: const [],
      ),
      body: Center(
          child: Text("You have pressed the button $_counter minutes times.")),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
