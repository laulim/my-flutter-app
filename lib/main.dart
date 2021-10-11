
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter tutorial',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
        backgroundColor: Colors.black87,
      ),
      body: const Text(
        'Hello world',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
          ),
        )
      // floatingActionButton: FloatingActionButton(
      //   child: Text('Add'),
      //   onPressed: ,
      // ),
      // bottomNavigationBar: BottomNavigationBar(

      // ),
    ),
  ));
}
