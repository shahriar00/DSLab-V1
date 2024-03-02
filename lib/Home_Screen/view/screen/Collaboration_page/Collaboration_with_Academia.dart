import 'dart:ui';
import 'package:dslab/Home_Screen/view/screen/Collaboration_page/Collaboration_Academia_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Collaboration_Industry_log.dart';

class Collaboration extends StatelessWidget {
  const Collaboration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(32, 72, 149, .92),
      child: Column(
        children: [
          Gap(66.5),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Collaboration With Academia',
              style: GoogleFonts.allerta(
                fontSize: 21,
                color: Colors.white,
              ),
            ),
          ),
          Gap(6),
          collaborationAccademiaLogo(),
          Gap(12),
          Padding(
            padding: EdgeInsets.all(6),
            child: Text(
              'Collaboration With Industry',
              style: GoogleFonts.allerta(
                fontSize: 21,
                color: Colors.white,
              ),
            ),
          ),
          collaborationIndustryLogo(),
        ],
      ),
    );
  }
}
