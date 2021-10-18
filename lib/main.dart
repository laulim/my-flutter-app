
import 'dart:ui';

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

var alignIcon = Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: icon,
          )
        );
const boxShadow = BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(3,3)
                );

const imageProvider = DecorationImage(
  image: AssetImage('assets/images/img1.jpeg'),
  fit: BoxFit.fill,
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
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: imageProvider,
          ),
          child: Container(
              // color: Colors.blue[50],
              child: icon,
              // height: 300,
              // width: 300,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(15),
              alignment: Alignment.center,
              // transform: Matrix4.rotationZ(20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                // borderRadius: BorderRadius.circular(30),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.blue,
                ),
                boxShadow: const  [
                  boxShadow,
                ],
                gradient: const RadialGradient(
                  colors: [Colors.red, Colors.black],
                )
              ),
            ),
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
