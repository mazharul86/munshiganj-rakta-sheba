// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:munshiganjraktasheba/blood.dart';
// import 'package:munshiganjraktasheba/healthtips.dart';
// import 'package:clip_shadow/clip_shadow.dart';
// import 'curveappbar.dart';

// //this is our homepage.
// //for blood on tap in line no 44 //problem 1, it is not flexible in one line in rorate form
// //for ambulance on tap in line no 80 // after adding curve bar it is show a gap between curvebar and body and in rorate form it is scroll under real appbar
// //for blood bank on tap in line no 124
// //for health tips on tap in line no 164
// //for floating action button on tap in line no 20
// class HomePage3 extends StatelessWidget {
//   const HomePage3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Color(0xffDF1010),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               ClipShadow(
//                 clipper: MyClipper(),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Color(0xff532013),
//                       blurRadius: 4,
//                       spreadRadius: 4,
//                       offset: Offset(1.0, 1.0)),
//                 ],
//                 child: Container(
//                   width: double.infinity,
//                   height: 220,
//                   decoration: BoxDecoration(
//                     color: Color(0xffDF1010),
//                   ),
//                 ),
//               ),
//               //here start point
//               SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Flexible(
//                           child: InkWell(
//                             onTap: () {
//                               Get.to(Recivepage());
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.all(10),
//                                 height: 150,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.grey,
//                                           spreadRadius: 1,
//                                           blurRadius: 4,
//                                           offset: Offset(2, 2)),
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Container(
//                                       height: 70,
//                                       width: 90,
//                                       child: Image(
//                                         image: AssetImage("image/blood.png"),
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                     Text(
//                                       "রক্ত",
//                                       style: TextStyle(
//                                           color: Color(0xffDF1010),
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 )),
//                           ),
//                         ),
//                         Flexible(
//                           child: InkWell(
//                             onTap: () {},
//                             child: Container(
//                                 margin: EdgeInsets.all(10),
//                                 height: 150,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.grey,
//                                           spreadRadius: 1,
//                                           blurRadius: 4,
//                                           offset: Offset(2, 2)),
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Container(
//                                       height: 70,
//                                       width: 90,
//                                       child: Image(
//                                         image:
//                                             AssetImage("image/ambulance.png"),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     Text(
//                                       "এম্বুলেন্স",
//                                       style: TextStyle(
//                                           color: Color(0xffDF1010),
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 )),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Flexible(
//                           child: InkWell(
//                             onTap: () {},
//                             child: Container(
//                                 margin: EdgeInsets.all(10),
//                                 height: 150,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.grey,
//                                           spreadRadius: 1,
//                                           blurRadius: 4,
//                                           offset: Offset(2, 2)),
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Container(
//                                       height: 70,
//                                       width: 90,
//                                       child: Image(
//                                         image:
//                                             AssetImage("image/blood-bank.png"),
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                     Text(
//                                       "রক্ত ভান্ডার",
//                                       style: TextStyle(
//                                           color: Color(0xffDF1010),
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 )),
//                           ),
//                         ),
//                         Flexible(
//                           child: InkWell(
//                             onTap: () {
//                               Get.to(LastPage());
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.all(10),
//                                 height: 150,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                     boxShadow: [
//                                       BoxShadow(
//                                           color: Colors.grey,
//                                           spreadRadius: 1,
//                                           blurRadius: 4,
//                                           offset: Offset(2, 2)),
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Container(
//                                       height: 70,
//                                       width: 90,
//                                       child: Image(
//                                         image:
//                                             AssetImage("image/healthtips.png"),
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                     Text(
//                                       "স্বাস্থ্য পরামর্শ",
//                                       style: TextStyle(
//                                           color: Color(0xffDF1010),
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 )),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10, right: 10),
//                       child: Container(
//                         height: 145,
//                         width: double.infinity,
//                         child: Image.asset(
//                           "image/homepage.png",
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 100);
//     path.quadraticBezierTo(
//         size.width / 4, size.height - 3, size.width, size.height - 220);

//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     // TODO: implement shouldReclip
//     return false;
//   }
// }
