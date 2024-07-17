import 'package:flutter/material.dart';
import 'package:quizz_app/screens/catogories_screen.dart';

final kcolorScheme = ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.light,
    primary: Colors.white,
    surface: const Color.fromRGBO(71, 11, 90, 1),
    onSurface: const Color.fromRGBO(183, 144, 209, 1));
final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: kcolorScheme.surface,
  colorScheme: kcolorScheme,
);

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const CatogoriesScreen(),
    );
  }
}
