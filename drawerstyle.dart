import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customextile.dart';

class DrawerStyle extends StatefulWidget {
  const DrawerStyle({Key? key}) : super(key: key);

  @override
  _DrawerStyleState createState() => _DrawerStyleState();
}

class _DrawerStyleState extends State<DrawerStyle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          iconColor: const Color(0xffC91010),
          collapsedIconColor: const Color(0xffC91010),
          textColor: const Color(0xffC91010),
          collapsedTextColor: const Color(0xffC91010),
          leading: const FaIcon(
            Icons.settings,
            color: Color(0xffC91010),
          ),
          title: const Text(
            'Settings',
          ),
          children: [
            ExpansionTile(
              iconColor: const Color(0xffC91010),
              collapsedIconColor: const Color(0xffC91010),
              textColor: const Color(0xffC91010),
              collapsedTextColor: const Color(0xffC91010),
              leading: const Icon(
                FontAwesomeIcons.user,
                color: Color(0xffC91010),
              ),
              title: const Text(
                'Profile',
              ),
              children: [
                ExTile(
                  icon: Icons.lock_open,
                  title: 'Privacy',
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {},
                            textColor: const Color(0xffC91010),
                            title: const Text('Change Password'),
                          ),
                          ListTile(
                            onTap: () {},
                            textColor: const Color(0xffC91010),
                            title: const Text('Change Picture'),
                          ),
                          ListTile(
                            onTap: () {},
                            textColor: const Color(0xffC91010),
                            title: const Text('Delete Account'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ExTile(
                  icon: FontAwesomeIcons.map,
                  title: 'Langauge',
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0),
                      child: Column(children: [
                        ListTile(
                          onTap: () {},
                          tileColor: const Color((0xffffff)),
                          textColor: const Color(0xffC91010),
                          title: const Text('English'),
                        ),
                        ListTile(
                          onTap: () {},
                          tileColor: const Color((0xffffff)),
                          textColor: const Color(0xffC91010),
                          title: const Text('বাংলা'),
                        ),
                      ]),
                    ),
                    ExTile(
                      icon: FontAwesomeIcons.palette,
                      title: 'Theme',
                      children: [
                        Column(children: [
                          ListTile(
                            onTap: () {},
                            textColor: const Color(0xffC91010),
                            title: const Text('Dark'),
                          ),
                          ListTile(
                            onTap: () {},
                            textColor: const Color((0xffC91010)),
                            title: const Text(
                              'Light',
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
