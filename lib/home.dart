import 'package:flutter/material.dart';
import 'package:quiz_game/body.dart';
import 'package:quiz_game/progressibar.dart';

import 'answer.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<Icon> _scoreTracker = [Icon(Icons.check_circle,color: Colors.green,), Icon(Icons.clear,color: Colors.red,)];
  int _questionindex = 0;
  int _totalscore = 0;
  var ques = questions[2]['question'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(80), top: Radius.circular(20))),
        title: Center(
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
              SizedBox(height: 20,),
              Body(),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(child: Text('{$ques}',style: TextStyle(fontSize: 18,color: Colors.white),)),
              ),
              // ...(questions[_questionindex]['answer'] as List<Map<String, Object>>).map((answer) => Answer(
              //   answerText: answer['answerText'],))
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                      "questions[0]['question']"
                  ),),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return ;
                // }));
              },child: Text('NEXT',style: TextStyle(fontSize: 18,color: Colors.white),),color: Colors.blueAccent,),
              Container(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  '0/9',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final questions = const [
  {
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