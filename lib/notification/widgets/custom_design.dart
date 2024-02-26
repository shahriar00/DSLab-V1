import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;


    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0019000,size.height*0.4945625);
    path_0.lineTo(size.width*0.1702667,size.height*0.7906875);
    path_0.lineTo(size.width*1.0019000,size.height*0.5199375);
    path_0.lineTo(size.width*1.0022333,size.height*-0.0213125);
    path_0.lineTo(size.width*-0.0036667,size.height*-0.0066875);
    path_0.lineTo(size.width*-0.0019000,size.height*0.4945625);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
