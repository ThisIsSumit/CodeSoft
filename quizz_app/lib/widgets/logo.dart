import 'package:flutter/material.dart';

Color logoColor = const Color.fromRGBO(183, 144, 209, 1);

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/images/brainup.png',
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          "QUIZ",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 80,
            color: logoColor,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              "assets/images/braindown.png",
              color: Theme.of(context).colorScheme.onSurface,
            )),
      ],
    );
  }
}
