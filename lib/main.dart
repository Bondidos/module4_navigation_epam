import 'package:flutter/material.dart';
import 'package:module4_navigation_epam/pages/first_screen.dart';
import 'package:module4_navigation_epam/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const FirstPage(),
      },
      onGenerateRoute: (settings){
        if(settings.name == "/second"){
          final args = settings.arguments.toString();
          return MaterialPageRoute(
            builder: (context){
              return SecondPage(messageFromFirst: args);
            }
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      initialRoute: "/",
    );
  }
}
