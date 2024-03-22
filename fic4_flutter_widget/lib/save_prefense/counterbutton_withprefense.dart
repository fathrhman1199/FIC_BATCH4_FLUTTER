import 'package:fic4_flutter_widget/save_prefense/counter_shared_preferences.dart';
import 'package:flutter/material.dart';

class FICButtonCounterBackWithSharedPreferense extends StatefulWidget {
  const FICButtonCounterBackWithSharedPreferense({super.key});

  @override
  State<FICButtonCounterBackWithSharedPreferense> createState() =>
      _FICButtonCounterBackWithSharedPreferenseState();
}

class _FICButtonCounterBackWithSharedPreferenseState
    extends State<FICButtonCounterBackWithSharedPreferense> {
  int countervalue = 0;

  void getCounterValue() async {
    countervalue = await CounterSharedPreferences().getData();
    setState(() {});
  }

  @override
  void iniState() {
    getCounterValue();
    super.initState();
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
                '$countervalue',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await CounterSharedPreferences().saveData(--countervalue);
                      getCounterValue();
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
                      CounterSharedPreferences().saveData(countervalue + 1);
                      getCounterValue();
                    },
                    child: const Text('+',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.green)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
