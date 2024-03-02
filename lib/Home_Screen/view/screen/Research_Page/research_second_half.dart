
import 'package:dslab/Home_Screen/view/screen/Research_Page/research_listView.dart';
import 'package:dslab/Home_Screen/view/screen/Research_Page/review_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class researchSecondHalf extends StatelessWidget {
  const researchSecondHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 505 * 4,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(9, 129, 107, 1),
      child: Column(
        children: [
          Gap(15),
          researchListView(),
          Gap(4),
          reviewPage(
            number: '10+',
            assetIcon: 'assets/Icons/icons8-team-100-2.png',
            textOfcard: 'COLLABORATIONS',
            imageScaleSize: 2.6,
            gapBetweenImageAndText: 2,
            gapFromTopToImage: 0,
            ContainerHeigh: 272,
          ),
          Gap(11 * 4),
          reviewPage(
            number: '50+',
            assetIcon: 'assets/Icons/icons8-cube-100.png',
            textOfcard: 'AWESOME TEAM MEMBERS',
            imageScaleSize: .859,
            gapBetweenImageAndText: 4 * 2,
            gapFromTopToImage: 0,
            ContainerHeigh: 271,
          ),
          Gap(11 * 4),
          reviewPage(
            number: '20+',
            assetIcon: 'assets/Icons/icons8-book-100.png',
            textOfcard: 'PUBLICATIONS',
            imageScaleSize: .859,
            gapBetweenImageAndText: 4 * 2,
            gapFromTopToImage: 0,
            ContainerHeigh: 270,
          ),
          Gap(11 * 4),
          reviewPage(
            number: '28+',
            assetIcon: 'assets/Icons/icons8-trophy-100.png',
            textOfcard: 'RESEARCH AWARDS',
            imageScaleSize: .860,
            gapBetweenImageAndText: 1,
            gapFromTopToImage: 6,
            ContainerHeigh: 269,
          )
        ],
      ),
    );
  }
}
