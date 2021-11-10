import 'package:flutter/material.dart';
import 'package:quiz_game/constant/constant.dart';
import 'package:quiz_game/questions1.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
List<QuizQuestions> questions = [
  QuizQuestions("q??????1111111111", true),
  QuizQuestions("q??????2222222", false),
  QuizQuestions("q??????1333333111", true),
  QuizQuestions("q????444444111", true),
  QuizQuestions("q??????1555555555333111", true),
  QuizQuestions("q??????133336666666666666666", true),
];

  int qindex = 0;
  int totalTrue = 0;
  int totalFalse = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(child: Center(child: Text('${questions[qindex].questions}'))),
            InkWell(
              onTap: (){
                setState(() {
                  if(qindex<=4){
                    if(true == questions[qindex].isTrue){
                      totalTrue++;
                    }

                  qindex++;}
                });
              },
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 120,
                color: Colors.blue,
                child: Text("yess"),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(onTap: (){
              setState(() {
                if(qindex>0){
                  if(false == questions[qindex].isTrue){
                  qindex++;
                  totalFalse++;
                }}
              });
            },

              child: Container(
                width: double.infinity,
                height: 120,
                color: Colors.red,
                child: Text("no"),
              ),

            ),
  Text(("total $totalTrue")),
  Text(("total $totalFalse")),
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(Quiz());
}