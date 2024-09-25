// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_application/Screens/menu.dart';
import 'package:to_do_application/util/add_task.dart';
import 'package:to_do_application/util/to_do_tile.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({super.key});

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> {
  final _controller = TextEditingController();

  List tasklist = [
    ["Hello World", false],
    ["Hello World!!", false]
  ];

  void clickcheckbox(bool? value, int index) {
    setState(() {
      tasklist[index][1] = !tasklist[index][1];
    });
  }

  void savetask() {
    setState(() {
      tasklist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.pop(context);
  }

  void createTask() {
    showModalBottomSheet(
        isScrollControlled: false,
        context: context,
        builder: (context) => Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: DrawerContent(
                controller: _controller,
                onsave: savetask,
              ),
            ),
        backgroundColor: Color.fromRGBO(39, 39, 39, 140));
  }

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
            fontFamily: "Trench",
            fontSize: 42,
            fontWeight: FontWeight.bold,
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
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createTask,
        backgroundColor: Color.fromARGB(255, 22, 65, 89),
        child: Icon(
          Icons.add,
          color: Color.fromARGB(255, 149, 183, 209),
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
        child: ListView.builder(
          itemCount: tasklist.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: tasklist[index][0],
              taskdone: tasklist[index][1],
              onChanged: (value) => clickcheckbox(value, index),
            );
          },
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
