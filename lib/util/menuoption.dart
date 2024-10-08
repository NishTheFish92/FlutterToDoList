import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Menuoption extends StatelessWidget {
  final String optiontext;
  final IconData optionicon;
  Function()? onclick;

  Menuoption({
    super.key,
    required this.optionicon,
    required this.optiontext,
    required this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        SlideEffect(curve: Curves.easeInBack),
        FadeEffect(duration: Duration(milliseconds: 400)),
      ],
      child: GestureDetector(
        onTap: onclick,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 13, right: 13, top: 14, bottom: 0),
          child: Container(
              height: MediaQuery.of(context).size.width * 0.30,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(39, 39, 39, 40),
                  borderRadius: BorderRadius.circular(18)),
              child: Row(
                children: [
                  Icon(
                    optionicon,
                    size: 47,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          optiontext,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
