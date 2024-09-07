// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Options",
          style: TextStyle(
            color: Color.fromARGB(255, 149, 183, 209),
          ),
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 149, 183, 209)),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 54, 63, 40),
                const Color.fromARGB(255, 80, 38, 55),
              ],
              stops: [
                0,
                0.5
              ]),
        ),
      ),
    );
  }
}
