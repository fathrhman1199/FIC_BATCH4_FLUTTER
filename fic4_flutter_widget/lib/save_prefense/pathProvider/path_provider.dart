import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CounterFileStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

//Create reference ke file location
  Future<File> get _localfile async {
    final path = await _localPath;

    return File('$path/counter.txt');
  }

//Write data to file
  Future<File> writeCounter(int counter) async {
    final file = await _localfile;

    return file.writeAsString('$counter');
  }

  //Read data from file
  Future<int> readCounter() async {
    try {
      final file = await _localfile;
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }
}
