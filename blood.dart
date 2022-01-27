// import 'package:flutter/material.dart';
// import 'package:munshiganjraktasheba/homepage.dart';
// import './blood2.dart';
// import 'blood3.dart';
// import './blood4.dart';
// import 'package:get/get.dart';
// //this page some parts are individually scrollable. last button alignment is not correct.

// class Recivepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 rp(),
//                 Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: Container(
//                       height: 24,
//                       width: double.infinity,
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         "Select blood group",
//                         style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 25,
//                             fontFamily: 'Special_Elite'),
//                       ),
//                     )),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   child: bc(),
//                 ),
//                 SingleChildScrollView(
//                   child: tf(),
//                 )
//               ],
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               // Add your onPressed code here!
//               Get.to(HomePage2());
//             },
//             shape: BeveledRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             backgroundColor: Color.fromARGB(255, 243, 72, 72),
//             child: const Icon(
//               Icons.bloodtype_outlined,
//             ),
//           ),
//           floatingActionButtonLocation:
//               FloatingActionButtonLocation.centerFloat,
//         ));
//   }
// }
