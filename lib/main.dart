import 'package:flutter/material.dart';
import 'package:my_app/router.dart';
import 'package:my_app/screens/main_screen.dart';
import 'package:my_app/screens/search_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WhatToWatch',
      home: MainScreen(),
      initialRoute: WTWRoute.initialRoute,
      onGenerateRoute: WTWRoute.generate,
      onUnknownRoute: WTWRoute.unknown,
      // routes: WTWRoute.routes,
    );
  }
}

class UndefinedView extends StatelessWidget {
  const UndefinedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Route is not defined'),
      ),
    );
  }
}
