// @dart=2.9
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class CurveContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ClipShadow(
          clipper: MyClipper(),
          boxShadow: [
            BoxShadow(
                color: Color(0xff532013),
                blurRadius: 4,
                spreadRadius: 4,
                offset: Offset(1.0, 1.0)),
          ],
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff532013)),
              color: Color(0xffDF1010),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 4, size.height - 3, size.width, size.height - 220);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
