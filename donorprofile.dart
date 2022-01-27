import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class DonorProfile extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Center(
                child: Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                      height: 500,
                      width: 550,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 30),
                                margin: EdgeInsets.only(left: 120),
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 30),
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Golam Hassan",
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(50),
                                      child: Text(
                                        "Blood Group",
                                        style: GoogleFonts.specialElite(
                                            color: Colors.red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20),
                                      margin: EdgeInsets.only(left: 100),
                                      child: Text(
                                        "A+",
                                        style: GoogleFonts.specialElite(
                                            color: Colors.red),
                                      ),
                                    )
                                  ])
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "Age",
                                    style: GoogleFonts.specialElite(
                                        color: Colors.red),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 195),
                                  child: Text(
                                    "25",
                                    style: GoogleFonts.specialElite(
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ]),
                          SizedBox(
                            height: 2,
                          ),
                          Row(children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(50),
                                  child: Text(
                                    "Adress",
                                    style: GoogleFonts.specialElite(
                                        color: Colors.red),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.only(top: 20),
                                  margin: EdgeInsets.only(left: 100),
                                  child: Text(
                                    "Munshigonj",
                                    style: GoogleFonts.specialElite(
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ]),
                          SizedBox(
                            height: 1,
                          ),
                          Row(children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Text(
                                    "Phone no",
                                    style: GoogleFonts.specialElite(
                                        color: Colors.red),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(top: 20),
                                    margin: EdgeInsets.only(left: 140),
                                    child: Text(
                                      "017090900",
                                      style: GoogleFonts.specialElite(
                                          color: Colors.red),
                                    ))
                              ],
                            ),
                          ]),
                          Row(children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              margin: EdgeInsets.only(left: 125),
                              child: RaisedButton(
                                onPressed: () => {},
                                child: Icon(
                                  Icons.call,
                                  color: Colors.green,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.grey[200],
                              ),
                            )
                          ])
                        ],
                      )),
                ),
              ),
            ),
          ),
        ));
  }
}
