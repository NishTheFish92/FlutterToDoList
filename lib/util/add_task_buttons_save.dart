import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        color: Color.fromARGB(255, 22, 65, 89),
        child: Text(
          "Save",
          style: TextStyle(
            color: Color.fromARGB(255, 149, 183, 209),
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
