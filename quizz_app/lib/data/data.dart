import 'package:flutter/material.dart';
import 'package:quizz_app/data/gk_questions_list.dart';
import 'package:quizz_app/data/mcu_quesitions.dart';
import 'package:quizz_app/data/programming_questions_list.dart';
import 'package:quizz_app/model/category.dart';
import 'package:quizz_app/model/question.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'General Knowledge',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Science and Nature',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Entertainment',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Programming',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Sports',
    color: Colors.teal,
  ),
  Category(
    id: 'c6',
    title: 'History',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Technology',
    color: Colors.blue,
  ),
  Category(
    id: 'c8',
    title: 'Literature',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Geography',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Religion and Mythology',
    color: Colors.teal,
  ),
  Category(
    id: 'c11',
    title: 'Marvel Ciematic Universe',
    color: Color.fromARGB(255, 150, 0, 0),
  ),
  Category(
    id: 'c12',
    title: 'DC',
    color: Colors.blueAccent,
  ),
];

Map<String, List<Question>> selectecdList = {
  'General Knowledge': gkquestions,
  'Marvel Ciematic Universe': mcuquestion,
  'Programming': programingQuestions
};
