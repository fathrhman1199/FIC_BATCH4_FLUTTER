import 'package:flutter/material.dart';

class FICDialogWidget extends StatefulWidget {
  const FICDialogWidget({super.key});

  @override
  State<FICDialogWidget> createState() => _FICDialogWidgetState();
}

class _FICDialogWidgetState extends State<FICDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Dialog & Bottomsheet"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(""),
                        content: const SingleChildScrollView(
                            child: ListBody(
                          children: [
                            Text("Your order was placed"),
                          ],
                        )),
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "OK",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      );
                    });
              },
              child: const Text('Open Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Your order was placed"),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "OK",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      );
                    });
              },
              child: const Text("Open BottomSheet"),
            ),
            ElevatedButton(
                onPressed: () async {
                  await showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Wrap(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [Text("Confirm")],
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: const Text("Open Bottomsheet")),
          ],
        ),
      ),
    );
  }
}
