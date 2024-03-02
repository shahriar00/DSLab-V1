
import 'package:dslab/Home_Screen/view/screen/More_About_Us/about_us_imagesContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/CustomSubmitButton.dart';
import '../HomeScreen/homeScreen.dart';

class moreAboutUs extends StatelessWidget {
  const moreAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        child: Column(
          children: [
            Gap(5.5),
            Text(
              'We Analyze & Visualize The Real Life Data For Increasing The Companies Businesses',
              style: GoogleFonts.aBeeZee(
                fontSize: 27.5,
                color: Colors.white,
              ),
            ),
            Gap(8),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'Explore the latest data insights and strategied from top industry leaders. Gain a better understanding of your business and customers through data. Latest Search Trends. Year in Search Report. Google Search Insights.',
                    style: GoogleFonts.allerta(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            Gap(8),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: dsSummit(
                  buttonText: 'More About Us',
                  buttonColor: Colors.black,
                  buttonHeight: 35,
                  buttonWidth: 163,
                  buttonCircleColor: const Color.fromRGBO(9, 129, 107, 1),
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
                ),
              ),
            ),
            Gap(95),
            Center(
              child: aboutUsImage(),
            ),
            Gap(13),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'To Data Driven Approach\nData Mining,\nVisualization &\nOptimization',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 27.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.only(top: 27.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'A data-driven approach is when decisions are based on analysis and interpretation of hard data rather than on observation. A data-driven approach ensures that solutions and plans are supported by sets of factual information, and not just hunches, feelings and anecdotal evidence.',
                  style: GoogleFonts.allerta(
                    fontSize: 17.5,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
