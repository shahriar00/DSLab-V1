
import 'package:dslab/Home_Screen/view/screen/Research_Page/research_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class researchFirstPage extends StatelessWidget {
  const researchFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0 * 2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0 * 5, left: 4),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Research',
                style: GoogleFonts.aBeeZee(
                  fontSize: ScreenUtil().setSp(35),
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(2.0, 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0 * 2, left: 4, right: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'We are a team of out-of-the-box thinkers, with deep expertise in analytics.We love to expand the boundaries on research with our own data.',
                style: GoogleFonts.allerta(
                  fontSize: ScreenUtil().setSp(21.7),
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SizedBox(
            height: 14.5 * 3.h,
          ),
          researchCard(
              title: 'Research Team',
              assetImage: 'images/research_team.jpg',
              onPressed: () {}),
          SizedBox(
            height: 19 * 3.h,
          ),
          researchCard(
              title: 'Research Topic',
              assetImage: 'images/research_topic.jpg',
              onPressed: () {}),
          SizedBox(
            height: 19 * 3.h,
          ),
          researchCard(
              title: 'Research Publication',
              assetImage: 'images/research_publication.jpg',
              onPressed: () {}),
          SizedBox(
            height: 12 * 3.h,
          )
        ],
      ),
    );
  }
}
