import 'package:flutter/material.dart';

class QuestionContainer extends StatelessWidget {
  const QuestionContainer(
      {required this.currentIndex,
      required this.currentQuestionTitle,
      super.key});
  final int currentIndex;
  final String currentQuestionTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 100,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 169, 19, 186),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Center(
            child: Text(
              "${currentIndex + 1}",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Container(
          height: 250,
          width: 350,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 169, 19, 186),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                currentQuestionTitle,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
        )
      ],
    );
  }
}
