
import 'package:dslab/Home_Screen/widget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class cclip extends StatelessWidget {
  const cclip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150.h,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(32, 72, 149, 1),
        child: ClipPath(
          clipper: customClip1(),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.5 * 5),
                    child: ProjectButton(),
                  ),
                )
              ],
            ),
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
    path_0.moveTo(0, size.height * 0.6197714);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.6197714);
    path_0.cubicTo(
        size.width * 0.6142778,
        size.height * 1.113218,
        size.width * 0.3956304,
        size.height * 1.140090,
        0,
        size.height * 0.6197714);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
