// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_application/Screens/menu.dart';
import 'package:to_do_application/util/todotile.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({super.key});

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> {
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
            // Navigator.pushNamed(context, '/menu');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuScreen(),
              ),
            );
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
        child: ListView(
          children: [
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
            ToDoTile(),
          ],
        ),
      ),
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
