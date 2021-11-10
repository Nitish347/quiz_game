import 'package:flutter/material.dart';
import 'package:quiz_game/progressibar.dart';
class Body extends StatelessWidget {
  // var kDefaultPadding;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SafeArea(
              child: Padding(
      padding:EdgeInsets.symmetric(horizontal: 20),
              child:ProgressBar(),

            ),),
          ],
        )
      ],
    );
  }
}
