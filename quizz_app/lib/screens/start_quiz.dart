import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/custom_button.dart';
import 'package:quizz_app/widgets/logo.dart';

class StartQuizPage extends StatelessWidget {
  const StartQuizPage(
      {super.key, required this.returnToMenu, required this.startQuiz});

  final Function returnToMenu;
  final Function startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Center(child: Logo()),
        Column(
          children: [
            CustomButton(
              onpressed: () => startQuiz,
              child: Text(
                'Start Quiz',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).colorScheme.primary),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onpressed: () => returnToMenu,
              child: Text(
                'Menu',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
