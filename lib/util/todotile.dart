// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskdone;
  Function(bool?)? onChanged;

  ToDoTile({super.key,
    required this.taskName,
    required this.taskdone,
    required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromRGBO(39, 39, 39, 140),
            borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          Checkbox(value: false, onChanged: ),
          Text(
            "Make list",
            style: TextStyle(color: Color.fromARGB(255, 149, 183, 209)),
          ),
        ]),
      ),
    );
  }
}
