import 'package:flutter/material.dart';

class ExTile extends StatefulWidget {
  ExTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.children})
      : super(key: key);
  String title;
  IconData icon;
  List<Widget> children = [];
  @override
  _ExTileState createState() => _ExTileState();
}

class _ExTileState extends State<ExTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title),
      leading: Icon(widget.icon),
      textColor: const Color(0xffC91010),
      collapsedTextColor: const Color(0xffC91010),
      iconColor: const Color(0xffC91010),
      collapsedIconColor: const Color(0xffC91010),
      children: widget.children,
    );
  }
}
