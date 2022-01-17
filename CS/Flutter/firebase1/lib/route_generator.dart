import 'package:firebase1/homepage.dart';
import 'package:firebase1/login.dart';
import 'package:firebase1/signup.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_)=>HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_)=>Login());
      case '/signup':
        return MaterialPageRoute(builder: (_)=>SignUp());
      default:
        return MaterialPageRoute(builder: (_)=>Login());
    }
  }
}