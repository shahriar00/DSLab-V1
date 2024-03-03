import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class collaborationIndustryLogo extends StatefulWidget {
  const collaborationIndustryLogo({super.key});

  @override
  State<collaborationIndustryLogo> createState() => _collaborationLogoState();
}

class _collaborationLogoState extends State<collaborationIndustryLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 380.w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.transparent,
              height: 150.h,
              width: 95.w,
              padding: EdgeInsets.all(3),
              child: Center(
                child: Image.asset(
                  'images/skilljobs.png',
                  alignment: Alignment.center,
                  height: 150.h,
                ),
              ),
            );
          }),
    );
  }
}
