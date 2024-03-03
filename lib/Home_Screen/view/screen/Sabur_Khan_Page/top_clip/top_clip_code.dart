import 'package:flutter/material.dart';

class topClipSaburKhan extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(size.width * 0.00, size.height * 0.9773413);
    path_0.lineTo(size.width * 0.00, size.height * 0.00);
    path_0.lineTo(size.width, size.height * 0.00);
    path_0.lineTo(size.width, size.height * 0.5971548);
    path_0.cubicTo(
        size.width * 0.8776434,
        size.height * 0.7293690,
        size.width * 0.8069639,
        size.height * 0.7909325,
        size.width * 0.6776578,
        size.height * 0.8811508);
    path_0.cubicTo(
        size.width * 0.4523229,
        size.height * 1.002778,
        size.width * 0.3002506,
        size.height * 1.014571,
        size.width * 0.002409639,
        size.height * 0.9773413);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
