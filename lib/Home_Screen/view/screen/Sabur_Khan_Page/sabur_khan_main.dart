
import 'package:dslab/Home_Screen/view/screen/Sabur_Khan_Page/bottom_clip/bottom_clip.dart';
import 'package:dslab/Home_Screen/view/screen/Sabur_Khan_Page/top_clip/top_clip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class saburKhan extends StatelessWidget {
  const saburKhan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const topClip(),
        Container(
          // height: 650.h,
          width: 480.w,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.2 * 3),
                child: Container(
                  child: Image.asset(
                    'images/SaburKhan.png',
                    scale: 2.6,
                  ),
                ),
              ),
              SizedBox(
                height: 11 * 2.h,
              ),
              Text(
                '“We must remember that there\nwas once prosperous time in our\nlives and it was set up to us to bring it\nback or maintain it”',
                style: GoogleFonts.allerta(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(20),
                  height: 1.6,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 11 * 2.h,
              ),
              Text(
                'Dr. Md. Sabur Khan',
                style: GoogleFonts.allertaStencil(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(33.5),
                ),
              ),
              SizedBox(
                height: 11 * 2.h,
              ),
              Text(
                'Founder & Chairman, Daffodil\nFamily',
                style: GoogleFonts.roboto(
                  color: Color.fromRGBO(17, 17, 17, 1),
                  fontSize: ScreenUtil().setSp(24),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        ),
        bottomClip(),
      ],
    );
  }
}
