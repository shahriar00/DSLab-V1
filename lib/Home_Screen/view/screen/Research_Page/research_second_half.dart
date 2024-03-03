
import 'package:dslab/Home_Screen/view/screen/Research_Page/research_listView.dart';
import 'package:dslab/Home_Screen/view/screen/Research_Page/review_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class researchSecondHalf extends StatelessWidget {
  const researchSecondHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: (615 * 4).h,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(9, 129, 107, 1),
      child: Column(
        children: [
          SizedBox(
            height: 25 * 2.h,
          ),
          researchListView(),
          SizedBox(
            height: 4.h,
          ),
          reviewPage(
            number: '10+',
            assetIcon: 'images/icons8-team-100-2.png',
            textOfcard: 'COLLABORATIONS',
            imageScaleSize: 2.6,
            gapBetweenImageAndText: 2,
            gapFromTopToImage: 0,
            ContainerHeigh: 272,
          ),
          SizedBox(
            height: 12 * 4.h,
          ),
          reviewPage(
            number: '50+',
            assetIcon: 'images/icons8-cube-100.png',
            textOfcard: 'AWESOME TEAM MEMBERS',
            imageScaleSize: .859,
            gapBetweenImageAndText: 4 * 2,
            gapFromTopToImage: 0,
            ContainerHeigh: 271,
          ),
          SizedBox(
            height: 12 * 4.h,
          ),
          reviewPage(
            number: '20+',
            assetIcon: 'images/icons8-book-100.png',
            textOfcard: 'PUBLICATIONS',
            imageScaleSize: .859,
            gapBetweenImageAndText: 4 * 2,
            gapFromTopToImage: 0,
            ContainerHeigh: 270,
          ),
          SizedBox(
            height: 12 * 4.h,
          ),
          reviewPage(
            number: '28+',
            assetIcon: 'images/icons8-trophy-100.png',
            textOfcard: 'RESEARCH AWARDS',
            imageScaleSize: .860,
            gapBetweenImageAndText: 1,
            gapFromTopToImage: 6,
            ContainerHeigh: 269,
          ),
          SizedBox(
            height: 20 * 4.h,
          )
        ],
      ),
    );
  }
}
