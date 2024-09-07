// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:to_do_application/Screens/home_screen.dart';
import 'package:to_do_application/Screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainTaskScreen(),
      routes: {
        '/home_screen': (context) => MainTaskScreen(),
        '/menu': (context) => MenuScreen(),
      },
    );
  }
}
