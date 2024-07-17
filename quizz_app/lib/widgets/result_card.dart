import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/question_identifier.dart';

class ResultCard extends StatelessWidget {
  const ResultCard(
      {required this.questionIndex,
      required this.title,
      required this.selectedAnswer,
      required this.correctAnswer,
      super.key});
  final String title;
  final String selectedAnswer;
  final String correctAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = (selectedAnswer == correctAnswer);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: questionIndex,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(selectedAnswer,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252),
                    )),
                Text(correctAnswer,
                    style: const TextStyle(
                      color: Colors.green,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
