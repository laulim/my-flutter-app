import 'package:flutter/material.dart';
import 'package:my_app/screens/main_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatToWatch',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          backgroundColor: Colors.red[900],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                }
              );
            },
          ),
        ),
        body: Text('search screen')
      ),
    );
  }
}
