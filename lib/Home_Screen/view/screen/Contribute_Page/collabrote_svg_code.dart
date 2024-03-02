import 'package:flutter/material.dart';

class collabroteCLIP extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(416, 521);
    path_0.lineTo(0, 521);
    path_0.lineTo(0, 147.623);
    path_0.lineTo(416, 1);
    path_0.lineTo(416, 521);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
