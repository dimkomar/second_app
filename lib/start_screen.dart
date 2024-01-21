import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  @override
  Widget build(context) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: const Color.fromARGB(150, 250, 250, 250),
              ),
              const SizedBox(height: 80),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                ),
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: () {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'),
              )
            ],
          ),
        );
  }
}
