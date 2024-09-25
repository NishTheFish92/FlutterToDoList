import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskdone;
  final Function(bool?)? onChanged;

  const ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskdone,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13, top: 14, bottom: 0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromRGBO(39, 39, 39, 140),
            borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          Checkbox(
            value: taskdone,
            onChanged: onChanged,
            activeColor: Color.fromARGB(255, 115, 87, 98),
          ),
          Text(
            taskName,
            style: TextStyle(
                color: Color.fromARGB(255, 149, 183, 209),
                fontSize: 35,
                decoration: taskdone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
        ]),
      ),
    );
  }
}