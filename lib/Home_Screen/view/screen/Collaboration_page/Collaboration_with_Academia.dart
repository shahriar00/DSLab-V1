import 'dart:ui';

import 'package:dslab/Home_Screen/view/screen/Collaboration_page/Collaboration_Academia_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Collaboration_Industry_log.dart';

class Collaboration extends StatelessWidget {
  const Collaboration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(32, 72, 149, .92),
      child: Column(
        children: [
          SizedBox(height: 21.h * 4),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Collaboration With Academia',
              style: GoogleFonts.allerta(
                fontSize: ScreenUtil().setSp(24),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          collaborationAccademiaLogo(),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.all(6),
            child: Text(
              'Collaboration With Industry',
              style: GoogleFonts.allerta(
                fontSize: ScreenUtil().setSp(25.5),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          collaborationIndustryLogo(),
          SizedBox(
            height: 40.h,
          )
        ],
      ),
    );
  }
}
