// import 'package:flutter/material.dart';
//
// class ProgressBar extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<ProgressBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 35,
//       decoration: BoxDecoration(
//           border: Border.all(color: Color(0xFF3F4768), width: 3),
//           borderRadius: BorderRadius.circular(50)),
//       child: Stack(
//         children: [
//           LayoutBuilder(
//             builder: (context, constraints) => Container(
//               width: constraints.maxWidth * 0.6,
//               decoration: BoxDecoration(
//                   gradient:
//                       LinearGradient(colors: [Colors.cyan, Colors.tealAccent]),
//                   borderRadius: BorderRadius.circular(50)),
//             ),
//           ),
//           Positioned.fill(
//               child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [Text("18 sec"), Icon(Icons.watch_later_outlined)],
//           ))
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class ProgressBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: 35,
//           decoration: BoxDecoration(
//               border: Border.all(color: Color(0xFF3F4768), width: 3),
//               borderRadius: BorderRadius.circular(50)),
//           child: Stack(
//             children: [
//               LayoutBuilder(
//                 builder: (context, constraints) => Container(
//                   width: constraints.maxWidth * 1,
//                   decoration: BoxDecoration(
//                       gradient: const LinearGradient(
//                           colors: [Colors.cyan, Colors.blueAccent]),
//                       borderRadius: BorderRadius.circular(50)),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 10),
//                 child: Positioned.fill(
//                     child: Row(
//                   children: const [
//                     Text(
//                       "15",
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 )),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
