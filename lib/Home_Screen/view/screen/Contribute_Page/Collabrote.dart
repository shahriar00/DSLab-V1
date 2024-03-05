
import 'package:dslab/Home_Screen/widget/CustomSubmitButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../homeScreen.dart';
import 'collabrote_svg_code.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class collabroteMain extends StatelessWidget {
  const collabroteMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ClipPath(
        clipper: collabroteCLIP(),
        child: Container(
          color: Color.fromRGBO(32, 72, 149, 1),
          child: Center(
            child: Container(
              width: 480.w,
              height: 500.h,
              child: Column(
                children: [
                  //Gap(42 * 4),
                  SizedBox(
                    height: 45 * 4.h,
                  ),
                  Text(
                    'To Collaborate\nWith Us',
                    style: GoogleFonts.aBeeZee(
                      fontSize: ScreenUtil().setSp(33),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Gap(12 * 2),
                  SizedBox(
                    height: 15 * 2.h,
                  ),
                  Text(
                    'Our Expert Teachers, Lab\nStudents Are Always Active For\nYou',
                    style: GoogleFonts.allerta(
                      height: 1.6,
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(20),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Gap(14.4 * 2),
                  SizedBox(
                    height: 16 * 2.h,
                  ),
                  dsSummit(
                    buttonText: "Collaboration Contact",
                    buttonColor: Colors.black,
                    buttonHeight: 48,
                    buttonWidth: 250,
                    buttonCircleColor: Colors.white,
                    buttonCircleRedious: 34.7,
                    buttonIcon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    //sizeBetweenTextandImage: 12,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
