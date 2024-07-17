import 'package:flutter/material.dart';
import 'package:quizz_app/model/question.dart';
import 'package:quizz_app/screens/catogories_screen.dart';
import 'package:quizz_app/screens/questions_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.questionKey,
      required this.questionsList,
      required this.selectedAnswers});
  final List<String> selectedAnswers;
  final List<Question> questionsList;

  final String questionKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...questionsList.map(
            (e) => Text(e.text),
          ),
          ...selectedAnswers.map(
            (e) => Text(e),
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CatogoriesScreen()));
              },
              child: const Text("Home")),
          OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionsScreen(
                              questionKey: questionKey,
                            ),),);
              },
              child: const Text("Restart"))
        ],
      ),
    );
  }
}
