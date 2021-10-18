import 'package:flutter/material.dart';
import 'package:my_app/screens/search_screen.dart';

Widget searchButton(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.search),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
    }
  );
}
