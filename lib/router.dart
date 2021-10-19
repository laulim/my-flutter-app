import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/screens/main_screen.dart';
import 'package:my_app/screens/search_screen.dart';

// const String mainRoute = '/';
// const String searchRoute = '/search';


// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case mainRoute:
//       return MaterialPageRoute(builder: (context) => const MainScreen());
//     case searchRoute:
//       return MaterialPageRoute(builder: (context) => const SearchScreen());
//     default:
//       return MaterialPageRoute(builder: (context) => const UndefinedView());
//   }
// }
// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case mainRoute:
//       return MaterialPageRoute(builder: (context) => const MainScreen());
//     case searchRoute:
//       return MaterialPageRoute(builder: (context) => const SearchScreen());
//     default:
//       return MaterialPageRoute(builder: (context) => const UndefinedView());
//   }
// }


class WTWRoute {
  static const String initialRoute = '/';
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const MainScreen(),
    '/search': (context) => const SearchScreen(),
  };

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case 'search':
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      default:
        return MaterialPageRoute(builder: (context) => const UndefinedView());
    }
  }

  static Route<dynamic> unknown(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const UndefinedView());
  }
}
