import 'package:flutter/material.dart';

class bottomClipCode extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(size.width * 0.7454556, size.height * 0.1305908);
    path_0.cubicTo(
        size.width * 0.4949611,
        size.height * -0.05383202,
        size.width * 0.3214472,
        size.height * -0.007085156,
        0,
        size.height * 0.1305908);
    path_0.lineTo(0, size.height * 0.9908257);
    path_0.lineTo(size.width, size.height * 0.9908257);
    path_0.lineTo(size.width, size.height * 0.05709294);
    path_0.cubicTo(
        size.width * 0.8951333,
        size.height * 0.1896321,
        size.width * 0.8399528,
        size.height * 0.1951945,
        size.width * 0.7454556,
        size.height * 0.1305908);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
