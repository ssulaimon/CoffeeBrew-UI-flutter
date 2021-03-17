
import 'package:coffee_brew/details.dart';
import 'package:coffee_brew/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "Home": (context) => Home(),
        "details": (context) => Details(),
      },
      initialRoute: "Home",
    ),
  );
}
