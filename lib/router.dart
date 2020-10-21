import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekreativniproject/pages/detail/detail.dart';
import 'package:nekreativniproject/pages/homepage/homepage.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "homepage":
      return MaterialPageRoute(builder: (context) => MyHomePage());
    case "task/detail":
      return MaterialPageRoute(
          builder: (context) => TaskDetail(id: settings.arguments));
    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}
