// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_application/Screens/menu.dart';
import 'package:to_do_application/data/database.dart';
import 'package:to_do_application/util/add_task.dart';
import 'package:to_do_application/util/to_do_tile.dart';

class MainTaskScreen extends StatefulWidget {
  const MainTaskScreen({super.key});

  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen> {
  ToDoDatabase db = ToDoDatabase();
  final taskbox = Hive.box('mybox');

  @override
  void initState() {
    if (taskbox.get("Todo") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final _controller = TextEditingController();
  void clickcheckbox(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updatedata();
  }

  void deletetask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updatedata();
  }

  void savetask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    db.updatedata();
    Navigator.pop(context);
  }

  void canceltask() {
    setState(() {
      _controller.clear();
      Navigator.pop(context);
    });
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
                oncancel: canceltask,
              ),
            ),
        backgroundColor: Color.fromRGBO(18, 18, 18, 1));
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
            //color: Color.fromARGB(255, 149, 183, 209),
            color: Colors.white,
            fontFamily: "Trench",
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
            //color: Color.fromARGB(255, 149, 183, 209
            color: Colors.white),
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
          //color: Color.fromARGB(255, 149, 183, 209),
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 22, 65, 89),
                //const Color.fromARGB(255, 80, 38, 55),
                const Color.fromARGB(255, 6, 76, 55)
              ],
              stops: [
                0,
                0.6
              ]),
        ),
        child: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: db.toDoList[index][0],
              taskdone: db.toDoList[index][1],
              onChanged: (value) => clickcheckbox(value, index),
              deletefunction: (context) => deletetask(index),
            );
          },
        ),
      ),
    );
  }
}
