// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class bc extends StatelessWidget {
//   const bc({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(8),
//           child: Container(
//             height: 160,
//             width: double.infinity,
//             child: GridView.count(
//               shrinkWrap: true,
//               crossAxisCount: 4,
//               crossAxisSpacing: 10.0,
//               mainAxisSpacing: 10.0,
//               padding: EdgeInsets.all(10),
//               scrollDirection: Axis.vertical,
//               children: [
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "A+",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "A-",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "B+",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "B-",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "AB+",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "AB-",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "O+",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     child: Row(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                                 padding: EdgeInsets.only(left: 17, top: 10),
//                                 child: Text(
//                                   "O-",
//                                   style: TextStyle(
//                                       fontFamily: "Special_Elite",
//                                       fontSize: 26),
//                                 )),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   splashColor: Colors.red,
//                   focusColor: Colors.black,
//                   onTap: () {
//                     height:
//                     50;
//                     color:
//                     Colors.red;
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
