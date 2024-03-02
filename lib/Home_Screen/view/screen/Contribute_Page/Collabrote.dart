
import 'package:dslab/Home_Screen/widget/CustomSubmitButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../HomeScreen/homeScreen.dart';
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
              width: 250.h,
              height: 350.h,
              child: Column(
                children: [
                  Gap(42 * 4),
                  Text(
                    'To Collaborate\nWith Us',
                    style:
                        GoogleFonts.aBeeZee(fontSize: 28, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Gap(15.5 * 2),
                  Text(
                    'Our Expert Teachers, Lab\nStudents Are Always Active For\nYou',
                    style: GoogleFonts.allerta(
                      fontSize: 16.9,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gap(14.5 * 2),
                  dsSummit(
                    buttonText: "Collaboration Contact",
                    buttonColor: Colors.black,
                    buttonHeight: 45,
                    buttonWidth: 236,
                    buttonCircleColor: Colors.white,
                    buttonCircleRedious: 32,
                    buttonIcon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const home(),
                        ),
                      );
                    },
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
