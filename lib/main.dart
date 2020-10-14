import 'package:flutter/material.dart';
import 'router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nekreativniproject',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          )),
      initialRoute: "homepage",
      onGenerateRoute: router.generateRoute,
    );
  }
}
