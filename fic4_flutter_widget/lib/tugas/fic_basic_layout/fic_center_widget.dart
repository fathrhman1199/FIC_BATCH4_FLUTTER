import 'package:flutter/material.dart';

class FICCenterWidget extends StatelessWidget {
  const FICCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - Center"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.grey[20],
                  elevation: 5.0,
                ),
                child: Text(
                  "add to cart"
                      .toUpperCase(), //toUpperCase = untuk semua Huruf menjadi KAPITAL
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
