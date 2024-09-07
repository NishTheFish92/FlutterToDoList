// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainTaskScreen extends StatelessWidget {
  const MainTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your Tasks",
          style: TextStyle(
            color: Color.fromARGB(255, 149, 183, 209),
          ),
        ),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 149, 183, 209)),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/menu');
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 22, 65, 89),
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
