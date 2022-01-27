// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class rp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ClipPath(
//           child: Stack(
//             children: [
//               Container(
//                 height: 300,
//                 color: Colors.redAccent,
//               ),
//               Positioned(
//                   left: 130,
//                   top: 80,
//                   child: Title(
//                       color: Colors.white,
//                       child: Text(
//                         "Receive",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 35,
//                             fontFamily: 'Special_Elite'),
//                       )))
//             ],
//           ),
//           clipper: MyClipper(),
//         ),
//       ],
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     // TODO: implement getClip
//     var path = new Path();
//     path.lineTo(0.0, size.height - 40);

//     var firstControlPoint = new Offset(size.width / 5, size.height);
//     var firstEndPoint = new Offset(size.width / 3, size.height - 30.0);
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);

//     var secondControlPoint =
//         new Offset(size.width - (size.width / 6), size.height - 155);
//     var secondEndPoint = new Offset(size.width, size.height - 150);
//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondEndPoint.dx, secondEndPoint.dy);

//     path.lineTo(size.width, size.height - 80);
//     path.lineTo(size.width, 0.0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
