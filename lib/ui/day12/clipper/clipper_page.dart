import 'package:flutter/material.dart';
import 'package:sfd/ui/day12/clipper/color.dart';

class ClipperPage extends StatefulWidget {
  @override
  _ClipperPageState createState() => _ClipperPageState();
}

class _ClipperPageState extends State<ClipperPage> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 300,
      ),
      painter: CurvedPainter(),
    );
  }
}
