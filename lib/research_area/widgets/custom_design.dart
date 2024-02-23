import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDesign extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

          
    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0010600,size.height*0.0449200);
    path_0.lineTo(size.width*0.1928000,size.height*0.1006000);
    path_0.lineTo(size.width*1.0032000,size.height*0.0024000);
    path_0.lineTo(size.width*1.0020000,size.height*1.0033400);
    path_0.lineTo(size.width*-0.0080000,size.height);
    path_0.lineTo(size.width*-0.0010600,size.height*0.0449200);
    path_0.close();

    return path_0;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}
