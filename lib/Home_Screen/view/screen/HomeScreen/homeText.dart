
import 'package:dslab/Home_Screen/view/screen/homeScreen.dart';
import 'package:dslab/Home_Screen/widget/fonts/ABeeZee_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/CustomSubmitButton.dart';

class homeText extends StatelessWidget {
  const homeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingMargin,
      color: Colors.transparent,
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upgrade\nYour Business With\nData Scientific Solution',
            style: textThemeABeeZee.headline2?.copyWith(
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors
                      .black, // Use a darker shade of blue or another contrasting color
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(
              'First time providing data service in Bangladesh, Powered By Data Science Lab of Daffodil International University, Dhaka, Bangladesh',
              style: GoogleFonts.allerta(
                color: Colors.white,
                fontSize: 18,
                height: 1.5,
                shadows: [
                  Shadow(
                    color: Colors
                        .black, // Use a darker shade of blue or another contrasting color
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: Image.asset(
              'images/HomeLogo.png',
              alignment: Alignment.center,
              height: 270.h,
              width: 400.w,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: dsSummit(
              buttonText: 'Data Science Summit 2023',
              buttonColor: Colors.black,
              buttonHeight: 48,
              buttonWidth: 280,
              buttonCircleColor: Colors.white,
              buttonCircleRedious: 34,
              buttonIcon: Icon(
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
            ),
          ),
        ],
      ),
    );
  }
}
