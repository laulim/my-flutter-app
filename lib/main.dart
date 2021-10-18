
import 'package:flutter/material.dart';
import 'package:my_app/custom_icons.dart';

void main() {
  runApp(const FlutterTutApp());
}

var icon = IconButton(
            icon: const Icon(
              // Icons.search,
              MyFlutterApp.clover,
              // size: 100.0,
            ),
            iconSize: 50.0,
            color: Colors.green,
            onPressed: () {
              print('wow');
            },
          );

class FlutterTutApp extends StatelessWidget {
  const FlutterTutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello world'),
          backgroundColor: Colors.black87,
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: icon,
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Add'),
          onPressed: () => {print('add')},
        ),
        // bottomNavigationBar: BottomNavigationBar(

        // ),
      ),
    );
  }
}
