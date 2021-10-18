import 'package:flutter/material.dart';
import 'package:my_app/screens/search_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatToWatch',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatToWatch'),
          backgroundColor: Colors.red[900],
          actions: [
            searchButton(context),
          ]
        ),
        body: Text('Main screen')
      ),
    );
  }
}

Widget searchButton(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.search),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
    }
  );
}
