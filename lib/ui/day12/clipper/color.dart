import 'package:flutter/material.dart';

Color colorOne = Colors.red;
Color colorTwo = Colors.red[300];
Color colorThree = Colors.red[100];

final appTheme = ThemeData(primaryColor: Colors.red);

class CurvedPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    var sw = size.width;
    var sh = size.height;

    //Color number 3
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(sw *0.10 , sh * 0.70, sw * 0.17, sh * 0.90);
    path.quadraticBezierTo(sw * 0.20, sh, sw * 0.25, sh * 0.90);

    path.quadraticBezierTo(sw *0.40 , sh * 0.40, sw * 0.50, sh * 0.70);
    path.quadraticBezierTo(sw * 0.60, sh * 0.85, sw * 0.65, sh * 0.65);

    path.quadraticBezierTo(sw *0.70 , sh * 0.90, sw, 0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);
    

    //Color number 2
    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(sw *0.10 , sh * 0.80, sw * 0.15, sh * 0.60);
    path.quadraticBezierTo(sw * 0.20, sh * 0.45, sw * 0.27, sh * 0.60);

    path.quadraticBezierTo(sw *0.45 , sh, sw * 0.50, sh * 0.80);
    path.quadraticBezierTo(sw * 0.55, sh * 0.45, sw * 0.75, sh * 0.75);

    path.quadraticBezierTo(sw *0.85 , sh * 0.93, sw, sh * 0.60);

    path.lineTo(sw, 0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    //Color number 1
    path = Path();

    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(sw *0.10 , sh * 0.55, sw * 0.22, sh * 0.70);
    path.quadraticBezierTo(sw * 0.30, sh * 0.90, sw * 0.40, sh * 0.75);

    path.quadraticBezierTo(sw *0.52 , sh * 0.50, sw * 0.65, sh * 0.70);
    path.quadraticBezierTo(sw * 0.75, sh * 0.85, sw, sh * 0.60);

    path.lineTo(sw, 0);

    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
   return oldDelegate != null;
  }
}