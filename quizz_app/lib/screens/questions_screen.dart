import 'package:flutter/material.dart';
import 'package:quizz_app/data/data.dart';

import 'package:quizz_app/screens/result_screen.dart';
import 'package:quizz_app/screens/start_quiz.dart';
import 'package:quizz_app/widgets/answer_button.dart';
import 'package:quizz_app/widgets/question_container.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.questionKey, super.key});
  final String questionKey;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;
  bool isStart = false;
  List<String> selectedAnswer = [];

  void _changeIndex(String answer) {
    setState(() {
      selectedAnswer.add(answer);
      index++;
    });
  }

  void action(int a) {
    if (a == 1) {
      setState(() {
        isStart = true;
      });
    }
    if (a == 2) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final questions = selectecdList[widget.questionKey];

    Widget content = StartQuizPage(returnToMenu: () {
      action(2);
    }, startQuiz: () {
      action(1);
    });
    if (questions == null || questions.isEmpty) {
      content = SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Oops (^ . ^)\nComming Soon...",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
                height: 60,
                width: 300,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          Theme.of(context).colorScheme.primary, // Text color
                      side: BorderSide(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface), // Border color
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.5), // Background color
                    ),
                    child: Text(
                      "Back",
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.primary),
                    ))),
          ],
        ),
      );
    }
    if (isStart) {
      if (index < questions!.length) {
        content = Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionContainer(
              currentIndex: index,
              currentQuestionTitle: questions[index].text,
            ),
            const SizedBox(
              height: 60,
            ),
            ...questions[index].getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () => _changeIndex(answer),
              );
            })
          ],
        );
      } else {
        content = ResultScreen(
        questionKey  : widget.questionKey,
          selectedAnswers: selectedAnswer,
          questionsList: questions,
        );
      }
    }

    return Scaffold(body: Center(child: content));
  }
}
