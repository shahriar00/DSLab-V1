import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customClipResearch extends StatelessWidget {
  const customClipResearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ClipPath(
        clipper: customClip2(),
        child: Container(
          color: Color.fromRGBO(217, 217, 217, 1),
          child: Center(
              child: Container(
            height: 200.h,
            width: 288.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Expert Lab Students Have Special Skills',
                  style: GoogleFonts.allertaStencil(
                    fontSize: 25,
                    color: Color.fromRGBO(17, 17, 17, 1),
                  ),
                ),
                Gap(13),
                Text(
                  'The data science learning goals of lab experiences include enhancing mastery of data science subject matter, developing Statistical analysis, increasing understanding of the Real-life data complexity and ambiguity of empirical work',
                  style: GoogleFonts.allertaStencil(
                    fontSize: 13.65,
                    color: Color.fromRGBO(17, 17, 17, 1),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class customClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(-5.99951, 81.3075);
    path_0.cubicTo(37.0224, 89.3515, 76.0189, 61.9314, 76.0189, 61.9314);
    path_0.cubicTo(219.293, -43.8551, 326.264, 11.6897, 361.394, 53.0464);
    path_0.cubicTo(395.401, 93.0815, 382.988, 200.811, 381.923, 210.054);
    path_0.cubicTo(381.888, 210.359, 381.865, 210.556, 381.857, 210.641);
    path_0.cubicTo(356.138, 372.906, 242.654, 372.603, -5.99951, 296.963);
    path_0.lineTo(-5.99951, 81.3075);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
