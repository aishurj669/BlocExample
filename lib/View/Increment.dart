
import 'package:bloc_app/ViewModel/CounterEvent.dart';
import 'package:bloc_app/bLoc/blocCounter.dart';
import 'package:flutter/material.dart';


// class Increment extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//    return IncrementState();
//   }
//
// }
// class IncrementState extends State<Increment> {
//   final _bloc = CounterBloc();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Bloc"),
//       ),
//       body: Center(
//         child: StreamBuilder(
//           stream: _bloc.counter,
//           initialData: 0,
//           builder: (BuildContext context,AsyncSnapshot<int> snapshot){
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                  print('$snapshot');
//                     '${snapshot.data}',
//
//                     style: TextStyle(fontSize: 30)
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//
//       //           Row(children: [
//       //             RaisedButton(
//       //               onPressed:() {
//       //                 _bloc.counterEventSink.add(IncrementEvent());
//       //               },
//       //               child: Text("Add"),
//       //             )
//       //           ],)
//       //         ],
//       //
//       //       );
//       //     },
//       //   ),
//       // ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           FloatingActionButton(
//             child: Icon(Icons.add),
//             backgroundColor: Colors.green,
//             onPressed: (){
//               print("Increment");
//               //class bloc class by passing IncrementEvent
//               _bloc.counterEventSink.add(IncrementEvent());
//             },
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           FloatingActionButton(
//             child: Icon(Icons.remove),
//             backgroundColor: Colors.red,
//             onPressed: (){
//               print("Decrement");
//               //class bloc class by passing DecrementEvent
//               _bloc.counterEventSink.add(DecrementEvent());
//             },
//           )
//         ],
//       ),
//     );
//   }
//   @override
//   void dispose() {
//     super.dispose();
//     //dispose all the controller
//     _bloc.dispose();
//   }
//
// }