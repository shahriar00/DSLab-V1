
import 'package:dslab/Home_Screen/view/screen/Sabur_Khan_Page/top_clip/top_clip_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

class topClip extends StatelessWidget {
  const topClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300.h,
      width: MediaQuery.of(context).size.width,
      child: ClipPath(
        clipper: topClipSaburKhan(),
        child: Container(
          color: Color.fromRGBO(9, 129, 107, 1),
          child: Center(
            child: Container(
              width: 270.w,
              //height: 110.h,

              child: Column(
                children: [
                  Gap(14 * 4),
                  Text(
                    'Some Important\nMotivational\nSpeech',
                    style: GoogleFonts.aBeeZee(
                      fontSize: ScreenUtil().setSp(33),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
