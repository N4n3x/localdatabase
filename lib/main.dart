import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:localdatabase/pages/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter("./");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local storage',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Home(),
    );
  }
}
