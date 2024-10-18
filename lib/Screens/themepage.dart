import 'package:flutter/material.dart';

class Themepage extends StatefulWidget {
  bool _toggled = false;
  Themepage({super.key});

  @override
  State<Themepage> createState() => _ThemepageState();
}

class _ThemepageState extends State<Themepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Theme",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                //const Color.fromARGB(255, 46, 52, 37),
                Color.fromARGB(255, 22, 65, 89),
                Color.fromARGB(255, 6, 76, 55),
              ],
              stops: [
                0,
                0.5
              ]),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(39, 39, 39, 40),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 0,
                child: SwitchListTile(
                  activeTrackColor: const Color.fromARGB(255, 115, 87, 98),
                  tileColor: const Color.fromRGBO(39, 39, 39, 40),
                  value: widget._toggled,
                  title: const Text(
                    "Dark Theme",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    "Minimalistic Dark theme",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      widget._toggled = newValue;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
