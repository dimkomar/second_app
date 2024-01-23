import 'package:flutter/material.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'second-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 26, 2, 80),
                  Color.fromARGB(255, 127, 58, 215)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionScreen()
          )),
    );
  }
}
