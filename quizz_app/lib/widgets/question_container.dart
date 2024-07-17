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
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Center(
            child: Text(
              "${currentIndex + 1}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Container(
          height: 250,
          width: 350,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: const BorderRadius.all(Radius.circular(50))),
          child: Center(
            child: Text(
              currentQuestionTitle,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
