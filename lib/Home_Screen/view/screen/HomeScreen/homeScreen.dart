
import 'package:dslab/Home_Screen/view/screen/HomeScreen/homeText.dart';
import 'package:dslab/Home_Screen/view/screen/More_About_Us/more_about_us.dart';
import 'package:dslab/Home_Screen/view/screen/Research_Page/research_full_page.dart';
import 'package:dslab/Home_Screen/widget/curved_edges_top.dart';
import 'package:flutter/material.dart';
import '../../../widget/customButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Collaboration_page/Collaboration_with_Academia.dart';
import '../Contribute_Page/Collabrote.dart';
import '../Sabur_Khan_Page/sabur_khan_main.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 7.5, right: 10, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/DataScienceLab.png",
                    scale: 1,
                    height: 107,
                    width: 107,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/diu.png",
                          scale: 5,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Image.asset(
                        "assets/notification.gif",
                        scale: 2.25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height / 4,
              //height: 229,
              height: 107.h,
              width: 360.w,
              padding: const EdgeInsets.all(0),
              color: Color.fromRGBO(32, 72, 149, 1),
              //clipper: RPSCustomPainter(),
              child: const SizedBox(
                child: Stack(
                  children: <Widget>[
                    Positioned(child: cclip()),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: ProjectButton(),
                    )),
                    // Positioned(top: 52, left: 0, child: dsButton())
                  ],
                ),
              ),
            ),
            Container(
              height: 530.h,
              //width: double.infinity,
              color: Color.fromRGBO(32, 72, 149, 1),
              child: homeText(),
            ),
            Container(
              height: 430,
              width: double.infinity,
              color: Color.fromRGBO(9, 129, 107, .06),
              child: Collaboration(),
            ),
            Container(
              height: 1123.h,
              color: Color.fromRGBO(32, 72, 149, 1),
              child: moreAboutUs(),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(9, 129, 107, 1),
              //color: Colors.white,
              child: researchMain(),
            ),
            Container(
              height: 413.h,
              child: collabroteMain(),
            ),
            saburKhan(),
          ],
        ),
      ),
    );
  }
}
