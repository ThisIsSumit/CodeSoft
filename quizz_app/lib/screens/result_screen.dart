import 'package:flutter/material.dart';
import 'package:quizz_app/model/question.dart';
import 'package:quizz_app/screens/catogories_screen.dart';
import 'package:quizz_app/screens/questions_screen.dart';
import 'package:quizz_app/widgets/custom_button.dart';
import 'package:quizz_app/widgets/result_card.dart';

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
    int index = 0;
    int correctanswerIndex = 0;
    int numTotalQuestions = questionsList.length;
    int numCorrectQuestions = questionsList
        .where((e) => e.answers[0] == selectedAnswers[correctanswerIndex++])
        .length;
    return SafeArea(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                style: const TextStyle(
                  color: Color.fromARGB(255, 230, 200, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...questionsList.map(
                (e) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ResultCard(
                        questionIndex: index,
                        title: e.text,
                        selectedAnswer: selectedAnswers[index++],
                        correctAnswer: e.answers[0]),
                  );
                },
              ),
              const SizedBox(
                height: 150,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CatogoriesScreen(),
                        ));
                  },
                  child: const Text("Home")),
              ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionsScreen(
                            questionKey: questionKey,
                          ),
                        ));
                  },
                  child: const Text("Restart"))
            ],
          ),
        )
      ]),
    );
  }
}
