
import 'package:dslab/Home_Screen/view/screen/Research_Page/custom_clip_for_researchPage.dart';
import 'package:dslab/Home_Screen/view/screen/Research_Page/research_first_half.dart';
import 'package:dslab/Home_Screen/view/screen/Research_Page/research_second_half.dart';
import 'package:flutter/material.dart';

class researchMain extends StatelessWidget {
  const researchMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        researchFirstPage(),
        customClipForResearch(),
        researchSecondHalf(),
      ],
    );
  }
}
