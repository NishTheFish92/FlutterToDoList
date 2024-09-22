// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:to_do_application/util/mybutton.dart';

class DrawerContent extends StatelessWidget {
  final TextEditingController? controller;
  VoidCallback onsave;
  DrawerContent({
    super.key,
    required this.controller,
    required this.onsave
  });
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //SaveButton(),
            //CancelButton(),
            Mybutton(text: "Save", onPressed: onsave),
            Mybutton(
                text: "Cancel",
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        )
      ],
    );
  }
}
