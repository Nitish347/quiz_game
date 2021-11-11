// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class Timer1 extends StatefulWidget {
//   @override
//   _TimerState createState() => _TimerState();
// }
//
// class _TimerState extends State<Timer1> {
//   static const maxSeconds = 5;
//   int seconds = maxSeconds;
//   Timer? timer;
//
//   void startTimer() {
//     timer = Timer.periodic(Duration(seconds: 1), (_) {
//       setState(() {
//         if (seconds > 0) {
//           seconds--;
//         }
//       });
//     });
//   }
//   void resetTimer(){
//     seconds=6;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//         children: [
//           buildTimer(),
//           button(),
//           button1(),
//         ],
//
//     );
//   }
//   Widget buildTimer() => SizedBox(
//       width: 200,
//       height: 200,
//       child: Stack(fit: StackFit.expand, children: [
//         CircularProgressIndicator(
//           value: seconds / maxSeconds,
//           strokeWidth: 12,
//           backgroundColor: Colors.red,
//           valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
//         ),
//         Center(
//           child: buildTime(),
//         )
//       ]));
//
//   Widget button() {
//     return MaterialButton(
//         onPressed: () {
//           startTimer();
//         },
//         child: const Text(
//           'Lets Start Quiz',
//           style: TextStyle(fontSize: 10, color: Colors.cyan),
//         ));
//   }Widget button1() {
//     return MaterialButton(
//         onPressed: () {
//           resetTimer();
//         },
//         child: const Text(
//           'Lets Start Quizfvdfbdbd',
//           style: TextStyle(fontSize: 10, color: Colors.cyan),
//         ));
//   }
//
//   Widget buildTime() {
//     return Text(
//       '$seconds',
//       style: TextStyle(fontSize: 35, color: Colors.blueAccent),
//     );
//   }
// }
//
// void main() {
//   runApp(Timer1());
// }
