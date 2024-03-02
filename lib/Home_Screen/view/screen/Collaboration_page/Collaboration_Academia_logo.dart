import 'package:flutter/material.dart';

class collaborationAccademiaLogo extends StatefulWidget {
  const collaborationAccademiaLogo({super.key});

  @override
  State<collaborationAccademiaLogo> createState() => _collaborationLogoState();
}

class _collaborationLogoState extends State<collaborationAccademiaLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.transparent,
              height: 400,
              width: 100,
              padding: EdgeInsets.all(2),
              child: Center(
                child:
                    // Text(
                    //   'Item $index',
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 18,
                    //   ),
                    // ),
                    Image.asset(
                  'assets/daffodil-international-university-logo-11C0D0D39A-seeklogo.com.png',
                  alignment: Alignment.center,
                  height: 400,
                ),
              ),
            );
          }),
    );
  }
}
