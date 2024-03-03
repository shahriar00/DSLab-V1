
import 'package:dslab/Home_Screen/widget/curved_edges_research.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customClipForResearch extends StatelessWidget {
  const customClipForResearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435.h,
      width: 480.w,
      alignment: Alignment.topLeft,
      color: Colors.transparent,
      child: customClipResearch(),
    );
  }
}
