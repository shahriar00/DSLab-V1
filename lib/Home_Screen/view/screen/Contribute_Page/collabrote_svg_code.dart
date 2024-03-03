import 'package:flutter/material.dart';

class collabroteCLIP extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(size.width * 1.005587, size.height * 1.006593);
    path_0.lineTo(0, size.height * 1.006593);
    path_0.lineTo(0, size.height * 0.2846154);
    path_0.lineTo(size.width * 1.005587, size.height * 0.001098901);
    path_0.lineTo(size.width * 1.005587, size.height * 1.006593);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
