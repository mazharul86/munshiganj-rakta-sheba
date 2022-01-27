import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:munshiganjraktasheba/ambulance.dart';
import 'package:munshiganjraktasheba/blood.dart';
import 'package:munshiganjraktasheba/bloodbank.dart';
import 'package:munshiganjraktasheba/finalblood.dart';
import 'package:munshiganjraktasheba/healthtips.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'curveappbar.dart';
import 'drawerstyle.dart';

//this is our homepage.
//for blood on tap in line no 44 //problem 1, it is not flexible in one line in rorate form
//for ambulance on tap in line no 80 // after adding curve bar it is show a gap between curvebar and body and in rorate form it is scroll under real appbar
//for blood bank on tap in line no 124
//for health tips on tap in line no 164
//for floating action button on tap in line no 20
class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            height: 560,
            width: 266,
            child: Drawer(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: DrawerHeader(
                      decoration: const BoxDecoration(color: Color(0xffC91010)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage('assets/pp.png'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'O+',
                                style: TextStyle(
                                    color: Color(0xffffffff), fontSize: 20),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                                'Saidur Sohel\nNoapara\nLouhojong,Munshigonj',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffffffff), fontSize: 15)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const DrawerStyle(),
                  ListTile(
                    onTap: () {},
                    tileColor: const Color((0xffffff)),
                    title: const Text(
                      'About us',
                      style: TextStyle(
                        color: Color(0xffC91010),
                      ),
                    ),
                    leading: const FaIcon(
                      FontAwesomeIcons.spinner,
                      color: Color(0xffC91010),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Log out',
                          style:
                              TextStyle(color: Color(0xffC91010), fontSize: 18),
                        ),
                      ),
                      IconButton(
                          color: const Color(0xffC91010),
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.signOutAlt))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "মুন্সিগঞ্জ রক্ত সেবা",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          backgroundColor: Color(0xffDF1010),
        ),
        body: SingleChildScrollView(
          child: Container(
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
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color(0xffDF1010),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Get.to(Finalblood());
                        },
                        child: Container(
                            margin: EdgeInsets.all(10),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(2, 2)),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 70,
                                  width: 90,
                                  child: Image(
                                    image: AssetImage("image/blood.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "রক্ত",
                                  style: TextStyle(
                                      color: Color(0xffDF1010),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Get.to(AmbulancePage());
                        },
                        child: Container(
                            margin: EdgeInsets.all(10),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(2, 2)),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 70,
                                  width: 90,
                                  child: Image(
                                    image: AssetImage("image/ambulance.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "এম্বুলেন্স",
                                  style: TextStyle(
                                      color: Color(0xffDF1010),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Get.to(BloodBankPage());
                        },
                        child: Container(
                            margin: EdgeInsets.all(10),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(2, 2)),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 70,
                                  width: 90,
                                  child: Image(
                                    image: AssetImage("image/blood-bank.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "ব্লাড ব্যাংক",
                                  style: TextStyle(
                                      color: Color(0xffDF1010),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Get.to(LastPage());
                        },
                        child: Container(
                            margin: EdgeInsets.all(10),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(2, 2)),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 70,
                                  width: 90,
                                  child: Image(
                                    image: AssetImage("image/healthtips.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "স্বাস্থ্য পরামর্শ",
                                  style: TextStyle(
                                      color: Color(0xffDF1010),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      "image/homepage.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
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
