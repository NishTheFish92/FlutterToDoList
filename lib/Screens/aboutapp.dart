import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About This App",
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
                const Color.fromARGB(255, 22, 65, 89),
                const Color.fromARGB(255, 6, 76, 55),
              ],
              stops: [
                0,
                0.5
              ]),
        ),
        child: ListView(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  textAlign: TextAlign.center,
                  "Text goes here",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
