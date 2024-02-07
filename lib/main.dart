// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_own_app/screens/mainScreens/HomePage.dart';
import 'package:my_own_app/screens/mainScreens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        "HomePage": (context) => HomePage(),
        "SplashScreen": (context) => SplashScreen()
      },
    );
  }
}
