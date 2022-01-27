import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:munshiganjraktasheba/createaccount.dart';
import 'package:munshiganjraktasheba/homepage.dart';

//this is our log in page, and this is the 1st page of this app.
//problem = page text log in alignment is not correct.
//there is no option for forget button
//botton size is another problem.
class MyLogIn extends StatefulWidget {
  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  bool isHiddePassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 210,
                ),
                Text(
                  'Log In',
                  style: GoogleFonts.specialElite(
                      color: HexColor('#DF1010'), fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: HexColor('#DF1010'),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: HexColor('#DF1010'),
                          ),
                        ),
                        labelText: 'Phone Number',
                        hintText: "Enter your phone number.",
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
                    TextField(
                      style: TextStyle(color: Colors.black),
                      obscureText: isHiddePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: HexColor('#DF1010'),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: HexColor('#DF1010'),
                          ),
                        ),
                        labelText: 'Password',
                        hintText: "Enter your password.",
                        suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility)),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        hintStyle: TextStyle(color: Colors.black45),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                            style: GoogleFonts.specialElite(
                                color: Colors.black, fontSize: 15),
                          )),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        "Log In",
                        style: GoogleFonts.specialElite(
                            color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Get.to(HomePage2());
                      },
                      color: HexColor('#DF1010'),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(CreateAccount());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        color: Colors.white24,
                        child: Text(
                          "Create Account ?",
                          style: GoogleFonts.specialElite(
                              color: Colors.black, fontSize: 18),
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
                        "Guest Log In",
                        style: GoogleFonts.specialElite(
                            color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () {
                        Get.to(HomePage2());
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddePassword == true) {
      isHiddePassword = false;
    } else {
      isHiddePassword = true;
    }

    setState(() {});
  }
}
