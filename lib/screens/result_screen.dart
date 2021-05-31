import 'package:flutter/material.dart';
import 'package:tudip_work/constants/styles.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen(this.totalScore, this.totalQuestions);

  int totalScore;
  int totalQuestions;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBlack,
          title: Text('Quizz Results', style: titleTextStyle(_width),),
          centerTitle: true,
          toolbarHeight: _height * 0.1,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Final score', style: resultTextStyle(_width),),
                SizedBox(
                  height: _height * 0.03,
                ),
                Text("$totalScore / $totalQuestions", style: resultTextStyle(_width),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
