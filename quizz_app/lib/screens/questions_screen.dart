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

  void _changeIndex() {
    setState(() {
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
      Navigator.pop(context);
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
      content = Container(
        child: Text("Comming soon"),
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
              currentQuestionTitle: questions[0].text,
            ),
            const SizedBox(
              height: 60,
            ),
            ...questions[index].getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: _changeIndex,
              );
            })
          ],
        );
      } else {
        content = ResultScreen();
      }
    }

    return Scaffold(body: Center(child: content));
  }
}
