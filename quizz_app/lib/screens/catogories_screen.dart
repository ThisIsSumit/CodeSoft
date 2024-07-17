import 'package:flutter/material.dart';
import 'package:quizz_app/data/data.dart';
import 'package:quizz_app/model/category.dart';
import 'package:quizz_app/screens/questions_screen.dart';
import 'package:quizz_app/widgets/catogory_grid_item.dart';

class CatogoriesScreen extends StatefulWidget {
  const CatogoriesScreen({super.key});

  @override
  State<CatogoriesScreen> createState() => _CatogoriesScreenState();
}

class _CatogoriesScreenState extends State<CatogoriesScreen> {
  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => QuestionsScreen(
          questionKey: category.title,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            for (final category in availableCategories)
              CategoryGridItem(
                category: category,
                onSelectCategory: () {
                  _selectCategory(context, category);
                },
              )
          ],
        ),
      ),
    );
  }
}
