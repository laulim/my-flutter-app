import 'package:flutter/material.dart';

Widget searchButton(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.search),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pushNamed('search');
    }
  );
}
