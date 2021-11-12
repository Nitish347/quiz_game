
import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final Color answerColor;
  final void Function() click;

  Answer({  required this.answerText , required this.answerColor , required this.click });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child:Container(
        height: 50,
        padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
            width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            color: answerColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Text(answerText,
          style: const TextStyle(
            fontSize: 15,
          ),),
      ),
    );
  }
}