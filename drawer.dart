import 'drawerheadershape.dart';
import 'drawerstyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  State<Drawerr> createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Color(0xffC91010)),
        primaryColor: Colors.white,
      ),
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
      ),
    );
  }
}
