import 'package:flutter/material.dart';

class FICSizedBoxWidget extends StatelessWidget {
  const FICSizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jago Flutter - SizedBox"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "Height 120 cm",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      "Width 80 cm",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Treatmen",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "Jati Wood, Canvas",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        "Amazing Love",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
