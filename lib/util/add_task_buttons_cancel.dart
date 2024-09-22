import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        color: Color.fromARGB(255, 22, 65, 89),
        child: Text(
          "Cancel",
          style: TextStyle(
            color: Color.fromARGB(255, 149, 183, 209),
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
