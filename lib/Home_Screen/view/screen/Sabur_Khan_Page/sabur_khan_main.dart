
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
        topClip(),
        Container(
          height: 365.h,
          width: 360.w,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/SaburKhan.png',
                  scale: 2.6,
                ),
              ),
              Gap(10 * 2),
              Text(
                '“We must remember that there\nwas once prosperous time in our\nlives and it was set up to us to bring it\nback or maintain it”',
                style: GoogleFonts.allerta(
                  color: Colors.black,
                  fontSize: 17.5,
                  height: 1.6,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(10 * 2),
              Text(
                'Dr. Md. Sabur Khan',
                style: GoogleFonts.allertaStencil(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
              Gap(10 * 2),
              Text(
                'Founder & Chairman, Daffodil\nFamily',
                style: GoogleFonts.roboto(
                  color: Color.fromRGBO(17, 17, 17, 1),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        bottomClip(),
      ],
    );
  }
}
