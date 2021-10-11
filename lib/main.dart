
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterTutApp());
}

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
        body: IconButton(
            icon: const Icon(
            Icons.search,
            // size: 100.0,
          ),
          iconSize: 50.0,
          color: Colors.red,
          onPressed: () {
            print('wow');
          },
        )
        // floatingActionButton: FloatingActionButton(
        //   child: Text('Add'),
        //   onPressed: ,
        // ),
        // bottomNavigationBar: BottomNavigationBar(

        // ),
      ),
    );
  }
}
