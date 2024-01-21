import 'package:flutter/material.dart';
import 'package:second_app/start_screen.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 26, 2, 80),
                  Color.fromARGB(255, 127, 58, 215)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: StartScreen()
      )
    ),
  ));
}