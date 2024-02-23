import 'package:dslab/research_area/widgets/custom_design.dart';
import 'package:flutter/material.dart';

class ResearchArea extends StatefulWidget {
  const ResearchArea({super.key});

  @override
  State<ResearchArea> createState() => _ResearchAreaState();
}

class _ResearchAreaState extends State<ResearchArea> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/logo2.png",
                    scale: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/diu.png",
                        scale: 8,
                      ),
                      Image.asset(
                        "images/notification.gif",
                        scale: 2,
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
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 30),
                    child: Text(
                      "Research Area",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 10.0, // shadow blur
                            color: Colors.grey, // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF168773),
                      ),
                    ),
                  ),
                ],
              ),
              ClipPath(
                clipper: CustomDesign(),
                child: Container(
                  height: deviceHeight,
                  width: deviceWidth,
                  color: Color(0xFF204895),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        "Welcome to Research Area",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
