import 'package:flutter/material.dart';

Color logoColor = const Color.fromRGBO(183, 144, 209, 1);

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: logoColor,
          child: Text("brain"),
        ),
        SizedBox(
          child: Text(
            "QUIZ",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 100,
              color: logoColor,
            ),
          ),
        ),
        SizedBox(child: Text("inverted brain"))
      ],
    );
  }
}
