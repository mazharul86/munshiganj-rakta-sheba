import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:munshiganjraktasheba/blooddonorform.dart';
import 'package:munshiganjraktasheba/homepage.dart';

//this is the 3rd page of this app. where user can set their profile photo and password
//for click photo on tap in line no 46 //problem sign up button alignment in incorrect on rorate view
//for photo from gallery on tap in line no 62
//1st textfield in line no 86 //problem in textfield bottom border color
//2nd textfield in line no  97
//for sign up button on tap in line no 110
class PP extends StatefulWidget {
  const PP({Key? key}) : super(key: key);

  @override
  State<PP> createState() => _PPState();
}

class _PPState extends State<PP> {
  File? _image;
  Future cameraImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File?;
    });
  }

  Future galleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "প্রোফাইল ছবি দিন",
                    style: TextStyle(fontSize: 20, color: Color(0xffDF1010)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 80,
                    child: _image == null
                        ? Text("no image")
                        : Image.file(_image as File),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "ছবি তুলুন",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      cameraImage();
                    },
                    color: HexColor('#DF1010'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "ফোন থেকে নিন",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      galleryImage();
                    },
                    color: HexColor('#DF1010'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "একাউন্ট নিরাপদ করুন",
                    style: TextStyle(
                      fontFamily: "Noto Serif Bengali",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                      labelText: "পাসওয়ার্ড",
                      hintText: "পাসওয়ার্ড",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      hintStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                      labelText: "পুনরায় দিন",
                      hintText: "পুনরায় দিন",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      hintStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 10.0),
                    height: 45,
                    width: 160,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        "সাইন আপ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () {
                        Get.to(DonorForm());
                      },
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
