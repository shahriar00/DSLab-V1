import 'package:dslab/contact/widgets/contact_custom_design.dart';
import 'package:dslab/contact/widgets/contact_information.dart';
import 'package:dslab/contact/widgets/contact_part.dart';
import 'package:dslab/contact/widgets/footer.dart';
import 'package:dslab/contact/widgets/google_map.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
          color: Color(0xFF024547),
          child: Column(
            children: [
              ClipPath(
                clipper: ContactCustomDesign(),
                child: Container(
                  height: 200,
                  width: deviceWidth,
                  // color: Color(0xFF2E9481),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                  )),
                  child: const SizedBox(
                    height: 150,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF238E7B),
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.grey, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // FirstSection(),
              ModuleTitle(),
              const SizedBox(
                height: 20,
              ),
              ContactHere(),
              //SecondSection(),
              const SizedBox(
                height: 20,
              ),

              //ThirdSection(),
              const SizedBox(
                height: 20,
              ),
              GoogleMapView(),
              // FourthSection(),
              const SizedBox(
                height: 20,
              ),

              const FooterSection(),

              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ModuleTitle() {
    return Container(
      child: Text(
        "C O N T A C T    H E R E",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 10.0, // shadow blur
              color: Colors.grey, // shadow color
              offset: Offset(2.0, 2.0), // how much shadow will be shown
            ),
          ],
        ),
      ),
    );
  }

  Widget GoogleMapView() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Center(
              child:  Text(
                "Find Us Easily On Google Map",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              child: GoogleMapScreen(),
            )
          ],
        ),
      ),
    );
  }
}
