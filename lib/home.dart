import 'package:flutter/material.dart';
import 'package:quiz_game/body.dart';
import 'package:quiz_game/progressibar.dart';
import 'package:quiz_game/timer.dart';
import 'dart:async';

import 'answer.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<Icon> _scoreTracker = [];
  static int _questionIndex = 0;
  int _totalScore = 0;
  bool choice = false;
  static const maxSeconds = 15;
  int seconds = maxSeconds;
  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        }
      });
    });
  }


  void resetTimer() {
    seconds = 15;
  }

  void stopTimer() {
    seconds = 0;
  }
  void next(){
    if(seconds==0 && _questionIndex<8){
      _questionIndex++;
      choice = false;
      resetTimer();
    }
  }

  void _after(String score) {
    setState(() {
      choice = true;
      if (score == 'true') _totalScore += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(80), top: Radius.circular(20))),
        title: const Center(
          child: Text(
            "Quiz Game",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Row(
              //   children: [
              //     if (_scoreTracker.isEmpty)
              //       Container(
              //         height: 5,
              //       ),
              //
              //     if (_scoreTracker.isNotEmpty) ..._scoreTracker
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              //**************************************************** Question Index ****************************************************************************
              Stack(
                children: [
                  Column(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: Container(
                            width: double.infinity,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xFF3F4768), width: 3),
                                borderRadius: BorderRadius.circular(50)),
                            child: Stack(
                              children: [
                                LayoutBuilder(
                                  builder: (context, constraints) => Container(
                                    width:
                                        constraints.maxWidth * (_questionIndex)/9,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          Colors.cyan,
                                          Colors.deepPurple
                                        ]),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ),
                                Center(
                                  child: Text('${_questionIndex}/9'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              //*********************************************************** Timer ****************************************************************************
              Column(
                children: [
                  buildTimer(),
                  button(),
                  // button1(),
                ],
              ),
              //********************************************************* Quiz Part ****************************************************************************

              Container(
                width: double.infinity,
                height: 100.0,
                margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text(
                  _questions[_questionIndex]['question'].toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              ...(_questions[_questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map(
                (answer) => Answer(
                  answerText: answer['answerText'].toString(),
                  answerColor: choice
                      ? answer['score'] == true
                          ? Colors.green
                          : Colors.red
                      : Colors.white,
                  click: () {
                    _after(answer['score'].toString());
                  },
                ),
              ),
//**************************************************************** Next Button And Score  **********************************************************************

              MaterialButton(
                onPressed: () {
                  setState(() {
                    if (_questionIndex < _questions.length - 1) {
                      _questionIndex++;
                      choice = false;
                      resetTimer();
                    }
                    else{
                      stopTimer();
                    }
                  });
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blueAccent,
              ),

              //   Text(
              //   '0/9',
              //   style: TextStyle(fontSize: 20),
              // ),

              Center(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent, shape: BoxShape.circle),
                  // color: Colors.blueAccent,
                  height: 65,
                  width: 65,
                  child: Center(
                      child: Text(
                    "    $_totalScore\nScore",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildTimer() => SizedBox(
      width: 120,
      height: 120,
      child: Stack(fit: StackFit.expand, children: [
        Container(

          margin: EdgeInsets.all(20),
          child: CircularProgressIndicator(
            value: seconds / maxSeconds,
            strokeWidth: 5,
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
          ),
        ),
        Center(
          child: buildTime(),
        )
      ]));

  Widget button() {
    return MaterialButton(
        onPressed: () {
          if(_questionIndex==0){
            _questionIndex++;
            choice = false;
          startTimer();}
        },
        child: const Text(
          'Start Quiz',
          style: TextStyle(fontSize: 25, color: Colors.cyan),
        ));
  }


  Widget buildTime() {
    next();
    return Text(
      '$seconds',
      style: const TextStyle(fontSize: 25, color: Colors.blueAccent),
    );
  }
}

final _questions = const [
  {
    'question': '',
    'answers': [
      {'answerText': '', 'score': true},
      {'answerText': '', 'score': false},
      {'answerText': '', 'score': false},
    ],
  },{
    'question': 'How long is New Zealand’s Ninety Mile Beach?',
    'answers': [
      {'answerText': '88km, so 55 miles long.', 'score': true},
      {'answerText': '55km, so 34 miles long.', 'score': false},
      {'answerText': '90km, so 56 miles long.', 'score': false},
    ],
  },
  {
    'question':
        'In which month does the German festival of Oktoberfest mostly take place?',
    'answers': [
      {'answerText': 'January', 'score': false},
      {'answerText': 'October', 'score': false},
      {'answerText': 'September', 'score': true},
    ],
  },
  {
    'question': 'Who composed the music for Sonic the Hedgehog 3?',
    'answers': [
      {'answerText': 'Britney Spears', 'score': false},
      {'answerText': 'Timbaland', 'score': false},
      {'answerText': 'Michael Jackson', 'score': true},
    ],
  },
  {
    'question': 'In Georgia (the state), it’s illegal to eat what with a fork?',
    'answers': [
      {'answerText': 'Hamburgers', 'score': false},
      {'answerText': 'Fried chicken', 'score': true},
      {'answerText': 'Pizza', 'score': false},
    ],
  },
  {
    'question':
        'Which part of his body did musician Gene Simmons from Kiss insure for one million dollars?',
    'answers': [
      {'answerText': 'His tongue', 'score': true},
      {'answerText': 'His leg', 'score': false},
      {'answerText': 'His butt', 'score': false},
    ],
  },
  {
    'question': 'In which country are Panama hats made?',
    'answers': [
      {'answerText': 'Ecuador', 'score': true},
      {'answerText': 'Panama (duh)', 'score': false},
      {'answerText': 'Portugal', 'score': false},
    ],
  },
  {
    'question': 'From which country do French fries originate?',
    'answers': [
      {'answerText': 'Belgium', 'score': true},
      {'answerText': 'France (duh)', 'score': false},
      {'answerText': 'Switzerland', 'score': false},
    ],
  },
  {
    'question': 'Which sea creature has three hearts?',
    'answers': [
      {'answerText': 'Great White Sharks', 'score': false},
      {'answerText': 'Killer Whales', 'score': false},
      {'answerText': 'The Octopus', 'score': true},
    ],
  },
  {
    'question': 'Which European country eats the most chocolate per capita?',
    'answers': [
      {'answerText': 'Belgium', 'score': false},
      {'answerText': 'The Netherlands', 'score': false},
      {'answerText': 'Switzerland', 'score': true},
    ],
  },
];
