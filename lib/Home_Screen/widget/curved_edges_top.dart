
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class cclip extends StatelessWidget {
  const cclip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 107.h,
        width: 360.w,
        color: Color.fromRGBO(32, 72, 149, 1),
        child: ClipPath(
          clipper: customClip1(),
          child: Container(
            color: Colors.white,
            //child: const Center(child: Text('Clip Pah')),
          ),
        ),
      ),
    );
  }
}

class customClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(0, 82.4296);
    path_0.lineTo(0, 0);
    path_0.lineTo(414, 0);
    path_0.lineTo(414, 82.4296);
    path_0.cubicTo(254.311, 148.058, 163.791, 151.632, 0, 82.4296);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
