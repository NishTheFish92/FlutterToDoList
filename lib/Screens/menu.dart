// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_application/util/menuoption.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  
  Widget build(BuildContext context) {
    setState(() {
      
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Options",
          style: TextStyle(
            color: Color.fromARGB(255, 149, 183, 209),
            fontSize: 42,
            fontWeight: FontWeight.bold,
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
        child: ListView(
          children: [
            Menuoption(
              optionicon: Icons.home,
              optiontext: "Home Page",
              onclick: () {},
            ),
            Menuoption(
              optionicon: Icons.check,
              optiontext: "Completed Tasks",
              onclick: () {},
            ),
            Menuoption(
              optionicon: Icons.access_time,
              optiontext: "Pending Tasks",
              onclick: () {},
            ),
            Menuoption(
              optionicon: Icons.format_paint_rounded,
              optiontext: "Theme",
              onclick: () {},
            ),
            Menuoption(
              optionicon: Icons.info,
              optiontext: "About",
              onclick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
