import 'package:flutter/material.dart';

class bottomClipCode extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(309.618, 16.4608);
    path_0.cubicTo(205.914, -7.023, 134.08, -1.07042, 0, 16.4608);
    path_0.lineTo(0, 126);
    path_0.lineTo(415, 126);
    path_0.lineTo(415, 7.10179);
    path_0.cubicTo(371.585, 23.9788, 348.74, 24.6871, 309.618, 16.4608);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
