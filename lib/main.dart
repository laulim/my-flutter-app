
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
        body: RichText(
          text: const TextSpan(
            style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontFamily: 'JetBrainsMono',
            ),
            children: <TextSpan>[
              TextSpan(text: 'Hello, '),
              TextSpan(
                style: TextStyle(color: Colors.red),
                children: <TextSpan>[
                  TextSpan(text: 'Brave '),
                  TextSpan(text: 'New '),
                  TextSpan(text: 'World',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ]
              ),
              TextSpan(text: '!'),
            ],
          ),
        ),
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
