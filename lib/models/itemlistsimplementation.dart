// import 'package:flutter/material.dart';
// import 'package:todo_app/models/tasks.dart';

// class ListTiles extends StatefulWidget {
//   @override
//   State<ListTiles> createState() => _ListTilesState();
// }

// class _ListTilesState extends State<ListTiles> {
//   List<Tasks> myList = [
//     // Tasks(text: 'Apple'),
//     // Tasks(text: 'Mango'),
//     // Tasks(text: 'Banana'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: myList.length,
//       itemExtent: 50,
//       itemBuilder: _listItemBuilder,
//     );
//   }

//   Widget _listItemBuilder(BuildContext context, index) {
//     return MyTaskTiles(
//       text: myList[index].text.toString(),
//       isChecked: myList[index].isChecked,
//       onChangedCallback: (bool? value) {
//         setState(() {
//           myList[index].toggleChecked();
//         });
//       },
//     );
//   }
// }

// class MyTaskTiles extends StatelessWidget {
//   const MyTaskTiles(
//       {Key? key,
//       required this.text,
//       required this.isChecked,
//       required this.onChangedCallback})
//       : super(key: key);
//   final void Function(bool?)? onChangedCallback;
//   final String text;
//   final bool isChecked;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         vertical: 10,
//         horizontal: 40,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             text,
//             style: const TextStyle(fontSize: 20),
//           ),
//           Checkbox(
//             value: isChecked,
//             onChanged: onChangedCallback,
//           )
//         ],
//       ),
//     );
//   }
// }
