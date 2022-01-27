import 'package:flutter/material.dart';
import 'package:munshiganjraktasheba/ambulance.dart';
import 'package:munshiganjraktasheba/curveappbar.dart';
import 'package:munshiganjraktasheba/finalblood.dart';
import 'package:munshiganjraktasheba/homepage.dart';
import 'package:munshiganjraktasheba/login.dart';
import 'package:get/get.dart';
import './finalhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogIn(),
    );
  }
}
