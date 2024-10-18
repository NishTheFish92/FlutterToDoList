import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskdone;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deletefunction;

  const ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskdone,
      required this.onChanged,
      required this.deletefunction});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [FadeEffect(), SlideEffect()],
      child: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13, top: 14, bottom: 0),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deletefunction,
                icon: Icons.delete,
                backgroundColor: const Color.fromARGB(255, 236, 100, 90),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(39, 39, 39, 40),
                borderRadius: BorderRadius.circular(8)),
            child: Row(children: [
              Checkbox(
                value: taskdone,
                onChanged: onChanged,
                activeColor: const Color.fromARGB(255, 115, 87, 98),
              ),
              Flexible(
                child: Text(
                  taskName,
                  style: TextStyle(
                      //color: Color.fromARGB(255, 149, 183, 209),
                      color: Colors.white,
                      fontSize: 28,
                      decoration: taskdone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
