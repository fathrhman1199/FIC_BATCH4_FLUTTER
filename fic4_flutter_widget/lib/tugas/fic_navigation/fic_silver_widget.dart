import 'package:flutter/material.dart';

class FICSilverWidget extends StatefulWidget {
  const FICSilverWidget({super.key});

  @override
  State<FICSilverWidget> createState() => _FICSilverWidgetState();
}

class _FICSilverWidgetState extends State<FICSilverWidget> {
  bool pinned = true;
  bool snap = true;
  bool floating = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC jago Flutter - Silver'),
        actions: const [],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Sliver App Bar',
                style: TextStyle(color: Colors.blue),
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: index.isOdd ? Colors.white : Colors.blue[200],
              height: 100,
              child: Center(
                child: Text(
                  '$index',
                  textScaleFactor: 5,
                ),
              ),
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}
