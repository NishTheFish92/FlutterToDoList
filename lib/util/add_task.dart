// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:to_do_application/util/mybutton.dart';

class DrawerContent extends StatelessWidget {
  final TextEditingController? controller;
  VoidCallback onsave, oncancel;
  DrawerContent(
      {super.key,
      required this.controller,
      required this.onsave,
      required this.oncancel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: controller,
            style: TextStyle(
              color: Colors.white,
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
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Mybutton(text: "Save", onPressed: onsave),
            Mybutton(text: "Cancel", onPressed: oncancel)
          ],
        )
      ],
    );
  }
}
