// import 'package:flutter/material.dart';

// class Counter extends StatefulWidget {
//   var number;

//   Counter({this.number});

//   @override
//   _CounterState createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   set number(number) {}

//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return Card(
//       elevation: 10,
//       shadowColor: Colors.blue.shade900,
//       child: Container(
//         height: h * 0.2,
//         width: w * 0.2,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: h * 0.1,
//                   width: w * 0.15,
//                   child: Center(
//                       child: Text(
//                     "COUNTER",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   )),
//                 ),
//                 Container(
//                   height: h * 0.1,
//                   width: w * 0.15,
//                   child: Center(
//                     child: Text(
//                       "$number",
//                       style:
//                           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     number = number + 1;
//                     print(number);
//                   },
//                   child: Container(
//                     height: h * 0.05,
//                     width: w * 0.05,
//                     child: Center(
//                         child: Icon(
//                       Icons.add,
//                       size: 40,
//                     )),
//                   ),
//                 ),
//                 Container(
//                   height: h * 0.05,
//                   width: w * 0.05,
//                   child: Center(
//                     child: Icon(
//                       Icons.remove,
//                       size: 40,
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
