import 'package:fic4_flutter_widget/save_prefense/counterbutton_withprefense.dart';
import 'package:fic4_flutter_widget/save_prefense/pathProvider/counterbutton_withpath_provider.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_form/dialog_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_form/fic_formwidget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_layout/fic_sizedbox_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_button_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_circle_avatar_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_container_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_icon_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_image_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_scaffold_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_basic_widget/fic_text_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_bottom_navbar_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_drawer_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_navigatioan_pop.dart';
import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_navigatorpush_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_silver_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_navigation/fic_tabbar_widget.dart';
import 'package:fic4_flutter_widget/tugas/fic_restapi_display.dart/fic_restapi_allcategory_display.dart';
import 'package:fic4_flutter_widget/tugas/fic_restapi_display.dart/fic_restapi_catogory_display.dart';

import 'package:fic4_flutter_widget/widget_leason/basic_form/form_widget.dart';
import 'package:fic4_flutter_widget/widget_leason/navigation/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterSharedPreferensWithPathProvider(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Jago Flutter'),
      //   ),
      //   body: const ChangeTimeWidget(),
      // ),
    );
  }
}

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Time: $time'),
        ElevatedButton(
          onPressed: () {
            time = DateTime.now();
            setState(() {});
          },
          child: const Text('Update Time'),
        ),
      ],
    );
  }
}

class ShowTextWidget extends StatelessWidget {
  final String text;
  const ShowTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
