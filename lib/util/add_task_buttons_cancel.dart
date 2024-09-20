import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          minWidth: 200,
          color: Color.fromARGB(255, 22, 65, 89),
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Color.fromARGB(255, 149, 183, 209),
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
