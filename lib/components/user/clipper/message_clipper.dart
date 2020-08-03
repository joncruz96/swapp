import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageClipper extends CustomClipper<Path> {
  MessageClipper({this.borderRadius = 15});
  final double borderRadius;
  @override
  Path getClip(Size size) {

    var path = Path();
    path.moveTo(15, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(15, size.height);
    path.lineTo(15, 40);
    path.lineTo(5, 30);
    path.lineTo(15, 20);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this ;
  } 
}

class MessageClipperPaint extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(15, 6.5);
    path.lineTo(size.width - 10, 6.5);
    path.lineTo(size.width - 10, size.height-20);
    path.lineTo(13, size.height-20);
    path.lineTo(13, 40);
    path.lineTo(5, 30);
    path.lineTo(10, 20);
    path.close();

    canvas.drawShadow(path, Colors.black45, 3.0, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
