import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50)),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.2,
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.blue, Colors.yellow]),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Positioned.fill(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("18 sec"), Icon(Icons.watch_later_outlined)],
          ))
        ],
      ),
    );
  }
}
