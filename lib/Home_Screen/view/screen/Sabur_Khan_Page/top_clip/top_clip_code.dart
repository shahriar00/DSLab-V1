import 'package:flutter/material.dart';

class topClipSaburKhan extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(0, 246.29);
    path_0.lineTo(0, 0);
    path_0.lineTo(415, 0);
    path_0.lineTo(415, 150.483);
    path_0.cubicTo(364.222, 183.801, 334.89, 199.315, 281.228, 222.05);
    path_0.cubicTo(187.714, 252.7, 124.604, 255.672, 1, 246.29);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
