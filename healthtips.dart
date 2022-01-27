import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:munshiganjraktasheba/homepage.dart';
import 'curveappbar.dart';
import 'package:clip_shadow/clip_shadow.dart';

//problem 1, there is a gap between curveappbar and body.
//problem 2, curveappbar is scroll under real appbar in rorate mode.
class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FloatingActionButton(
            backgroundColor: Color(0xffc75959),
            onPressed: () {
              Get.to(HomePage2());
            },
            child: FaIcon(FontAwesomeIcons.heartbeat),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipShadow(
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
                    color: Color(0xffDF1010),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "স্ব্যাস্থ্য পরামর্শ",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffffCDD2),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1.0, 1.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "* শরীর এর জন্য কয়েকটি স্ব্যাস্থ্য টিপস",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* স্বাস্থ্যকর খাবার খান।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* লবণ ও চিনি কম খান।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* ক্ষতিকর চর্বি খাওয়া কমিয়ে দিন।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* অ্যালকোহলের ক্ষতিকর ব্যবহার এড়িয়ে চলুন।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* ধুমপান করবেন না।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* সক্রিয় থাকুন।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "* নিয়মিত আপনার রক্ত পরীক্ষা করুন।",
                        style: TextStyle(
                          fontFamily: "Noto Serif Bengali",
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
