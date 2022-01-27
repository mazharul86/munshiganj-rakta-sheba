// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class tf extends StatelessWidget {
//   const tf({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(20),
//             child: Container(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Add Location",
//                 style: TextStyle(fontFamily: "Special_Elite", fontSize: 15),
//               ),
//             ),
//           ),
//           Padding(
//               padding: EdgeInsets.only(left: 30, right: 30, bottom: 250),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                       labelText: 'Location',
//                       hintText: 'Enter Address',
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Container(
//                         alignment: Alignment.center,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           child: Text("Search Donor"),
//                           style: ElevatedButton.styleFrom(
//                               primary: Colors.redAccent, // Background color
//                               onPrimary: Colors.white,
//                               shadowColor: Color(1)),
//                         )),
//                   )
//                 ],
//               )),
//         ],
//       ),
//     );
//   }
// }
