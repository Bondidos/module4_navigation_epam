import 'package:flutter/material.dart';
import 'package:module4_navigation_epam/pages/first_screen.dart';
import 'package:module4_navigation_epam/pages/second_page.dart';

class GenerateRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case '/second':
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => SecondPage(messageFromFirst: arg));
        } else {
          return error();
        }
      default:
        error();
    }
    return error();
  }

  static Route error() => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
          ),
          body: const Center(
            child: Text("Error Route"),
          ),
        ),
      );
}
