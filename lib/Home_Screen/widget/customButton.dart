import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectButton extends StatelessWidget {
  const ProjectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Toufiq MC');
      },
      child: Container(
        alignment: Alignment.center,
        height: 25.5.h,
        width: 320.w,
        decoration: BoxDecoration(
            color: Color.fromRGBO(77, 176, 91, 10),
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
        child: Text(
          'Projects',
          style: GoogleFonts.martel(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
