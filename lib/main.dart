
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: SvgPicture.asset('assets/images/cerchi-lunghi.svg')
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
