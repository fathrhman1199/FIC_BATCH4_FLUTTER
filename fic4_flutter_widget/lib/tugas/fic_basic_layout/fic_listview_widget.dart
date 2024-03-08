import 'package:flutter/material.dart';

class FICListViewWidget extends StatelessWidget {
  FICListViewWidget({super.key});

  final List<String> categoris = [
    'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen',
    'BallRoom',
    'Room1',
    'Room2',
    'Room3',
    'Room4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - ListView"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(categoris.length, (index) {
                    return GestureDetector(
                      onTap: () {},
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 24,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          categoris[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView(
                      children: List.generate(categoris.length, (index) {
                return GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Text(
                      categoris[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                );
              }))),
              const SizedBox(height: 20),
              SizedBox(
                  height: 32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(categoris.length, (index) {
                      return GestureDetector(
                        onTap: () {},
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 24,
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          child: Text(
                            categoris[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      );
                    }),
                  )),
              const SizedBox(height: 20),
              Expanded(
                  child: ListView(
                      children: List.generate(categoris.length, (index) {
                return GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Text(
                      categoris[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                );
              }))),
            ],
          ),
        ),
      ),
    );
  }
}
