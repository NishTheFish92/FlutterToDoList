// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_application/Screens/aboutapp.dart';
import 'package:to_do_application/Screens/home_screen.dart';
import 'package:to_do_application/Screens/themepage.dart';
import 'package:to_do_application/util/menuoption.dart';

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
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                //const Color.fromARGB(255, 46, 52, 37),
                const Color.fromARGB(255, 6, 76, 55),
                const Color.fromARGB(255, 22, 65, 89),
              ],
              stops: [
                0,
                0.5
              ]),
        ),
        child: ListView(
          children: [
            Menuoption(
              optionicon: Icons.check,
              optiontext: "Your Tasks",
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainTaskScreen(),
                  ),
                );
              },
            ),
            Menuoption(
              optionicon: Icons.format_paint_rounded,
              optiontext: "Theme",
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Themepage(),
                  ),
                );
              },
            ),
            Menuoption(
              optionicon: Icons.info,
              optiontext: "About",
              onclick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
