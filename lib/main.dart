import 'package:flutter/material.dart';
import 'package:my_app/screens/main_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}
