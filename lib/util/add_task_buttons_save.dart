import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
        child: MaterialButton(
          onPressed: () {},
          color: Color.fromARGB(255, 22, 65, 89),
          child: Text(
            "Save",
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
