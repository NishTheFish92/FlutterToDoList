// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:to_do_application/util/add_task_buttons_cancel.dart';
import 'package:to_do_application/util/add_task_buttons_save.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(
              color: Color.fromARGB(255, 149, 183, 209),
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: const Color.fromARGB(255, 116, 148, 154), width: 2),
              ),
              hintText: "Add a new task",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 149, 183, 209),
              ),
            ),
          ),
        ),
        Row(
          children: [
            SaveButton(),
            CancelButton(),
          ],
        )
      ],
    );
  }
}
