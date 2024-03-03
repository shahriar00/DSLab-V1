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
            height: 210.h,
            width: 350.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Expert Lab Students Have Special Skills',
                  style: GoogleFonts.allertaStencil(
                    fontSize: ScreenUtil().setSp(28),
                    color: Color.fromRGBO(17, 17, 17, 1),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'The data science learning goals of lab experiences include enhancing mastery of data science subject matter, developing Statistical analysis, increasing understanding of the Real-life data complexity and ambiguity of empirical work',
                  style: GoogleFonts.allertaStencil(
                    height: 1.25,
                    fontSize: ScreenUtil().setSp(14),
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
    path_0.moveTo(size.width * -0.008645533, size.height * 0.2284502);
    path_0.cubicTo(
        size.width * 0.1007513,
        size.height * 0.2510072,
        size.width * 0.1999121,
        size.height * 0.1741169,
        size.width * 0.1999121,
        size.height * 0.1741169);
    path_0.cubicTo(
        size.width * 0.5642277,
        size.height * -0.1225225,
        size.width * 0.8362363,
        size.height * 0.03323257,
        size.width * 0.9255648,
        size.height * 0.1492023);
    path_0.cubicTo(
        size.width * 1.012037,
        size.height * 0.2614648,
        size.width * 0.9804755,
        size.height * 0.5635472,
        size.width * 0.9777666,
        size.height * 0.5894691);
    path_0.cubicTo(
        size.width * 0.9776772,
        size.height * 0.5903257,
        size.width * 0.9776196,
        size.height * 0.5908827,
        size.width * 0.9775994,
        size.height * 0.5911173);
    path_0.cubicTo(
        size.width * 0.9121988,
        size.height * 1.046130,
        size.width * 0.6236311,
        size.height * 1.045283,
        size.width * -0.008645533,
        size.height * 0.8331792);
    path_0.lineTo(size.width * -0.008645533, size.height * 0.2284502);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
