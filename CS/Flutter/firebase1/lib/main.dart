import 'package:firebase1/login.dart';
import 'package:firebase1/route_generator.dart';
import 'package:firebase1/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    initialRoute: '/login',
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

