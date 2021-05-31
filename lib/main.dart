import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tudip_work/constants/styles.dart';
import 'package:tudip_work/screens/home_screen.dart';

void main() {
  runApp(Quizz());
}

class Quizz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBlack,
      ),
      home: HomeScreen(),
    );
  }
}
