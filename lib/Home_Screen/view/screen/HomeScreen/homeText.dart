
import 'package:dslab/Home_Screen/view/screen/HomeScreen/homeScreen.dart';
import 'package:dslab/Home_Screen/widget/CustomSubmitButton.dart';
import 'package:dslab/Home_Screen/widget/fonts/ABeeZee_fonts.dart';
import 'package:dslab/Home_Screen/widget/fonts/Allerta_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(
              'First time providing data service in Bangladesh, Powered By Data Science Lab of Daffodil International University, Dhaka, Bangladesh',
              style: textThemeAllerta.headline1?.copyWith(
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
            height: 14.h,
          ),
          Center(
            child: Image.asset(
              'assets/HomeLogo.png',
              alignment: Alignment.center,
              height: 180.h,
              width: 400.w,
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Center(
            child: dsSummit(
              buttonText: 'Data Science Summit 2023',
              buttonColor: Colors.black,
              buttonHeight: 35,
              buttonWidth: 234,
              buttonCircleColor: Colors.white,
              buttonCircleRedious: 27,
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
