import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class researchCard extends StatelessWidget {
  final String title;
  final String assetImage;
  final VoidCallback onPressed;

  researchCard(
      {required this.title, required this.assetImage, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(.6), // Increased opacity for more visibility
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 12),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.allertaStencil(
                    fontSize: ScreenUtil().setSp(27),
                    color: Color.fromRGBO(9, 129, 107, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 237.h,
              child: Container(
                child: Image.asset(assetImage),
              ),
            ),
            GestureDetector(
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 12),
                child: Container(
                  height: 17.h,
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Read More',
                        style: GoogleFonts.allerta(
                          fontSize: ScreenUtil().setSp(16.5),
                          color: Color.fromRGBO(32, 72, 149, 1),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                          child: Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
