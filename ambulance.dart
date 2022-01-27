import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import './homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AmbulancePage extends StatelessWidget {
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
                    border: Border.all(color: Color(0xff532013)),
                    color: Color(0xffDF1010),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Ambulance",
                        style: GoogleFonts.specialElite(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 700,
                padding: EdgeInsets.all(10),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    donorInfo(
                      name: "Munshiganj Ambulance Service",
                      adress: "Sadar,Khal-East",
                      phone: "01523245785",
                      image: "images/sabit.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Konoha-Village",
                      phone: "01523245785",
                      image: "images/kakashi.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                    donorInfo(
                      name: "Ambulance Service Sirajdikhan",
                      adress: "Sadar,Super-market",
                      phone: "01523245785",
                      image: "images/shahed.jpg",
                      boxwidth: MediaQuery.of(context).size.width * 3 / 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget donorInfo({name, adress, phone, image, boxwidth}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 5,
      ),
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: HexColor("#DF1010")),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                top: 5,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              ),
            ),
          ),
          Container(
            width: boxwidth,
            padding: EdgeInsets.only(
              left: 10,
              right: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.specialElite(
                    color: HexColor("#DF1010"),
                    fontSize: 18,
                  ),
                ),
                Text(
                  adress,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.specialElite(
                    color: HexColor("#DF2626"),
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
                Text(
                  phone,
                  style: GoogleFonts.specialElite(
                    color: Colors.grey,
                    fontSize: 12,
                    height: 1.5,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(2),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.phone_forwarded,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
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
