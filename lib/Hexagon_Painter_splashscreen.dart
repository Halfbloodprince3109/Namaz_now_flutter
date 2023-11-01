import 'package:flutter/material.dart';
import 'dart:math';
//scaled vertical hexagon painter

class HexagonPainter extends CustomPainter {
  final double scale;

  HexagonPainter({this.scale = 0.7}); // You can adjust the scale factor

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      
      ..style = PaintingStyle.fill;

    double radius = (size.height / 2) * scale; // Reduce the height by scaling
    double  centerX = size.width / 2;
    double centerY = size.height / 2;

    Path path = Path();
    for (var i = 0; i < 6; i++) {
      double angle = (pi / 3) * i;
      double x = centerX + radius * cos(angle);
      double y = centerY + radius * sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
