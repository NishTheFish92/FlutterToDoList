import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About App",
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
          children: const [
            Padding(
              padding: EdgeInsets.all(18),
              child: Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "This app was made as a beginner project for me to learn the basics of flutter and see how app development is. I would say this is a decent first project to work on and I am satisfied with the result.",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
