
import 'package:dslab/Home_Screen/view/screen/Sabur_Khan_Page/bottom_clip/bottom_clip_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class bottomClip extends StatelessWidget {
  const bottomClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      // width: 414,
      color: Colors.white,
      child: ClipPath(
        clipper: bottomClipCode(),
        child: Container(
          color: Color.fromRGBO(9, 129, 107, 1),
        ),
      ),
    );
  }
}
