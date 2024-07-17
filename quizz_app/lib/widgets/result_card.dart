import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/question_identifier.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = false;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: 0,
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "title",
                ),
                SizedBox(
                  height: 5,
                ),
                Text("selectedAnswer",
                    style: TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252),
                    )),
                Text("CorrectAnswer",
                    style: TextStyle(
                      color: Color.fromARGB(255, 181, 254, 246),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}
