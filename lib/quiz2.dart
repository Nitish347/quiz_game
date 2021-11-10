import 'package:flutter/material.dart';
import 'package:quiz_game/body.dart';
class Game extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        extendBodyBehindAppBar:  true,
        body: Body(),
      ),
    );
  }
}
void main(){
  runApp(Game());
}