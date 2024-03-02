import 'package:flutter/material.dart';

class collaborationIndustryLogo extends StatefulWidget {
  const collaborationIndustryLogo({super.key});

  @override
  State<collaborationIndustryLogo> createState() => _collaborationLogoState();
}

class _collaborationLogoState extends State<collaborationIndustryLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.transparent,
              height: 200,
              width: 100,
              padding: EdgeInsets.all(6),
              child: Center(
                child: Image.asset(
                  'assets/skilljobs.png',
                  alignment: Alignment.center,
                ),
              ),
            );
          }),
    );
  }
}
