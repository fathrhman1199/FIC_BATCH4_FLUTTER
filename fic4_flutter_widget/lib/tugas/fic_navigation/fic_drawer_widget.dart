import 'package:flutter/material.dart';

class FICDrawerWidget extends StatefulWidget {
  const FICDrawerWidget({super.key});

  @override
  State<FICDrawerWidget> createState() => _FICDrawerWidgetState();
}

class _FICDrawerWidgetState extends State<FICDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC Jago Flutter - Drawer'),
        actions: const [],
      ),
      endDrawer: Drawer(
          child: Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Container(
              color: Colors.blue,
              child: const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
                accountName: Text(
                  'Fathur',
                  style: TextStyle(),
                ),
                accountEmail: Text(
                  'rahmanfatur536@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Menu 1'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: const Text('Menu 1'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      )),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
