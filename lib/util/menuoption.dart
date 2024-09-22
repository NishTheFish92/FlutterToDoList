import 'package:flutter/material.dart';

class Menuoption extends StatelessWidget {
  final String optiontext;
  final IconData optionicon;
  Menuoption({super.key,required this.optionicon,required this.optiontext,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13, top: 14, bottom: 0),
      child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Color.fromRGBO(39, 39, 39, 75),
              borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: [
              Icon(
                optionicon,
                size: 47,
                color: Color.fromARGB(255, 149, 183, 209),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                ),
                child:Text(
                  optiontext,
                  style: TextStyle(
                    color: Color.fromARGB(255, 149, 183, 209),
                    fontSize: 42,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
