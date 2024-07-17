import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz_app/screens/catogories_screen.dart';
import 'package:quizz_app/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const CatogoriesScreen()));
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), changeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Logo(),
    );
  }
}
