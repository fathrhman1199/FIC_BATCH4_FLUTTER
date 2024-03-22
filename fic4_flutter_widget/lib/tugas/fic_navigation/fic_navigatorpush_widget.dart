import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_navigatioan_pop.dart';
import 'package:flutter/material.dart';

class FICNavigationPush extends StatefulWidget {
  const FICNavigationPush({super.key});

  @override
  State<FICNavigationPush> createState() => _FICNavigationPushState();
}

class _FICNavigationPushState extends State<FICNavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC Jago Flutter - Navigation Push'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const FICNavigatationPOPWidget();
                }));
              },
              child: const Text('Go to Next Page'),
            )
          ],
        ),
      ),
    );
  }
}
