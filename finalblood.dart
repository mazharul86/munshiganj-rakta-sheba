import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:munshiganjraktasheba/blood.dart';
import 'package:munshiganjraktasheba/donor.dart';
import 'package:munshiganjraktasheba/healthtips.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:munshiganjraktasheba/homepage.dart';
import 'curveappbar.dart';

//this is our homepage.
//for blood on tap in line no 44 //problem 1, it is not flexible in one line in rorate form
//for ambulance on tap in line no 80 // after adding curve bar it is show a gap between curvebar and body and in rorate form it is scroll under real appbar
//for blood bank on tap in line no 124
//for health tips on tap in line no 164
//for floating action button on tap in line no 20
class Finalblood extends StatelessWidget {
  const Finalblood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                        "Blood",
                        style: GoogleFonts.specialElite(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Select blood group",
                        style: TextStyle(
                            color: Color(0xffDF1010),
                            fontSize: 25,
                            fontFamily: 'Special_Elite'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "A +",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "A -",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "B +",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "B -",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "O +",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "O -",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "AB +",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              FloatingActionButton(
                                splashColor: Color(0xffDF1010),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  Get.to(DonorPageEn());
                                },
                                child: Text(
                                  "AB -",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xffDF1010),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xffDF1010),
                                ),
                              ),
                              labelText: 'Location',
                              hintText: "Location",
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              hintStyle: TextStyle(color: Colors.black45),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Text(
                              "  Search Donor  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            onPressed: () {},
                            color: Color(0xffDF1010),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              Get.to(HomePage2());
                            },
                            child: FaIcon(FontAwesomeIcons.heartbeat),
                            backgroundColor: Color(0xffc75959),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //here start point
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
