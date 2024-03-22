import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FICBottomNavBar extends StatefulWidget {
  const FICBottomNavBar({super.key});

  @override
  State<FICBottomNavBar> createState() => _FICBottomNavBarState();
}

class _FICBottomNavBarState extends State<FICBottomNavBar> {
  final List<Widget> list = const [
    Text('Home'),
    Text('Store'),
    Text('Profile'),
  ];

  int _selectedI = 0;

  List<dynamic> menuI = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Store',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedI = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC Jago FLuterr - Navbar"),
        actions: const [],
      ),
      body: Center(
        child: list[_selectedI],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.white,
        elevation: 30.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 14,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuI.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: SvgPicture.asset(
                i['icon'],
                color: Colors.black87,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon'],
              color: Colors.white,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedI,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
