import 'package:fic4_flutter_widget/save_prefense/counter_shared_preferences.dart';
import 'package:fic4_flutter_widget/save_prefense/pathProvider/path_provider.dart';
import 'package:flutter/material.dart';

class CounterSharedPreferensWithPathProvider extends StatefulWidget {
  const CounterSharedPreferensWithPathProvider({super.key});

  @override
  State<CounterSharedPreferensWithPathProvider> createState() =>
      _FICButtonCounterBackWithSharedPreferenseState();
}

class _FICButtonCounterBackWithSharedPreferenseState
    extends State<CounterSharedPreferensWithPathProvider> {
  int _counter = 0;

  void _getDataCounter() async {
    _counter = await CounterFileStorage().readCounter();
    setState(() {});
  }

  void _incrementCounter() async {
    await CounterFileStorage().writeCounter(++_counter);
    _getDataCounter();
  }

  void _decrementCounter() async {
    await CounterFileStorage().writeCounter(--_counter);
    _getDataCounter();
  }

  void _removeCounter() async {
    await CounterFileStorage().writeCounter(0);
    _getDataCounter();
  }

  @override
  void initState() {
    super.initState();
    _getDataCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - SharedPref Counter button.'),
        actions: const [],
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
            border: Border.all(color: Colors.blueAccent),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$_counter',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      _decrementCounter();
                      _getDataCounter();
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                      _getDataCounter();
                    },
                    child: const Text('+',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.green)),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  _removeCounter();
                },
                child: const Text('Clear'),
              ),
              const Text('Selesai'),
            ],
          ),
        ),
      ),
    );
  }
}
