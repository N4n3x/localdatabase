import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Box<dynamic> box;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Base de données local"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                box = await Hive.openBox('testBox');
                box.put('name', {"key": 1, "test": true});
                print(box.get("name"));
              },
              child: Text("ADD")),
          (box != null) ? Text(box.get("name")) : Text("Wait")
        ],
      ),
    );
  }

  void addItem() async {
    var box = await Hive.openBox('testBox');
    await box.put('name', 'David');
  }
}
