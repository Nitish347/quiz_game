import 'package:flutter/material.dart';

class New extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: Container (
         color: Colors.red,
       ),
      )
    );
  }

}

void main(){
  runApp(New());
}
