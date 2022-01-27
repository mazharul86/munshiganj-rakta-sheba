import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:munshiganjraktasheba/homepage.dart';
//dont get it after which page, this page will come.

class DonorForm extends StatefulWidget {
  const DonorForm({Key? key}) : super(key: key);

  @override
  _DonorFormState createState() => _DonorFormState();
}

class _DonorFormState extends State<DonorForm> {
  bool val1 = false;
  bool val2 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Card(
                //color:Colors.grey[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  height: 550,
                  width: 550,
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Blood doner form",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          margin: EdgeInsets.only(left: 40),
                          child: Text("Phone No"),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          margin: EdgeInsets.only(left: 150),
                          child: Text("0160987677"),
                        )
                      ],
                    ),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        margin: EdgeInsets.only(left: 40),
                        child: Text("Age"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        margin: EdgeInsets.only(left: 180),
                        child: Text("44"),
                      )
                    ]),
                    SizedBox(
                      height: 90,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.only(left: 35),
                      value: this.val1,
                      onChanged: (value) {
                        setState(
                          () {
                            this.val1 = value!;
                          },
                        );
                      },
                      activeColor: Colors.grey,
                      title: Text("I will not harrass any user"),
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.only(left: 35),
                      value: this.val2,
                      onChanged: (value) {
                        setState(
                          () {
                            this.val2 = value!;
                          },
                        );
                      },
                      activeColor: Colors.grey,
                      title: Text("I have read all the terms & conditions"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        "Agree",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Get.to(HomePage2());
                      },
                      color: HexColor('#DF1010'),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
