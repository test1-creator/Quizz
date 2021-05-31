import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tudip_work/constants/styles.dart';
import 'package:tudip_work/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final questions = [
    {
      "question": "Hitler party which came into power in 1933 is known as",
      "answers": [{"text": "Labour Party", "score": 0}, {"text": "Nazi Party", "score": 1}, {"text": "Ku-Klux-Klan", "score": 0}, {"text": "Democratic Party", "score": 0}]
    },
    {
      "question": "For which of the following disciplines is Nobel Prize awarded?",
      "answers": [{"text":"Physics and Chemistry", "score": 0}, {"text": "Physiology or Medicine", "score": 0}, {"text": "Literature and Economics", "score": 0}, {"text": "All of the above", "score": 1}]
    },
    {
      "question": "Fastest shorthand writer was",
      "answers": [{"text": "Dr. G. D. Bist", "score": 1}, {"text": "J.R.D. Tata", "score": 0}, {"text": "J.M. Tagore", "score": 0}, {"text": "Khudada Khan", "score": 0}]
    }
    ];



  int totalscore = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        title: Text('Quizz', style: titleTextStyle(_width),),
        centerTitle: true,
        toolbarHeight: _height * 0.1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: _height * 0.05, left: _width * 0.05, right: _width * 0.05),
                child: Text(questions[index]["question"].toString(), style: normalTextStyle(_width),)),
            SizedBox(
              height: _height * 0.03,
            ),


            Text("Choose your answer", style: smallTextStyle(_width),),
            SizedBox(
              height: _height * 0.03,
            ),

            ...(questions[index]['answers'] as List<Map<String, Object>>).map((answer) {
              return Container(
                width: _width * 0.8,
                height: _height * 0.08,
                margin: EdgeInsets.only(bottom: _height * 0.03),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kWhite),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                  onPressed: () {
                    totalscore = totalscore + (answer["score"] as int);
                    setState(() {
                      index = index + 1;
                    });
                    if(index == questions.length) {
                      index = 0;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(totalscore, questions.length))).then((value) {
                        totalscore = 0;
                      });
                    }
                  },
                  child: Text(answer["text"].toString(), style: optionsTextStyle(_width),),
                ),
              );
            }).toList(),


          ],
        ),
      ),
    ));
  }
}
