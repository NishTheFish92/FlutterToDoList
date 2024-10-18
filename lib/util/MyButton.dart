import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Mybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        color: const Color.fromARGB(255, 22, 65, 89),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 149, 183, 209),
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
