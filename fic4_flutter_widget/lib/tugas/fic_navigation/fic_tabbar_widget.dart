import 'package:flutter/material.dart';

class FICTabbarWidget extends StatefulWidget {
  const FICTabbarWidget({super.key});

  @override
  State<FICTabbarWidget> createState() => _FICTabbarWidgetState();
}

class _FICTabbarWidgetState extends State<FICTabbarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabControllerini;

  @override
  void initState() {
    super.initState();
    _tabControllerini = TabController(length: 4, vsync: this);
    _tabControllerini.addListener(() {});
  }

  @override
  void dispose() {
    _tabControllerini.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC Jago Flutter - Tabbar'),
        bottom: TabBar(controller: _tabControllerini, tabs: const [
          Tab(
            icon: Icon(Icons.directions_boat),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
          ),
          Tab(
            icon: Icon(Icons.directions_ferry),
          ),
          Tab(
            icon: Icon(Icons.directions_bike),
          ),
        ]),
      ),
      body: TabBarView(controller: _tabControllerini, children: const [
        Center(
          child: Text('Tab 1'),
        ),
        Center(
          child: Text('Tab 2'),
        ),
        Center(
          child: Text('Tab 3'),
        ),
        Center(
          child: Text('Tab 4'),
        )
      ]),
    );
  }
}
