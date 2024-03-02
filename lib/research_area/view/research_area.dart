import 'package:dslab/notification/view/notification_view.dart';
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen()));
                        },
                        child: Image.asset(
                          "images/notification.gif",
                          scale: 2,
                        ),
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
          color: Color(0xFF204895),
          child: Column(
            children: [
              ClipPath(
                clipper: ResearchAreaCustomDesign(),
                child: Container(
                  height: 200,
                  width: deviceWidth,
                  color: Colors.white,
                  child: const SizedBox(
                    height: 150,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Research Area",
                            style: TextStyle(
                              fontSize: 35,
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
              NLP(),

              //Computer Vision ...........

              ComputerVision(),

              //Statistics and Probability..............

              Statistics(),

              //Footer ..................

              // const FooterSection()
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  Widget Footer() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "images/logo2.png",
            scale: 6,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "We are a team of out-of-the-box thinkers, with deep expertise in analytics. Our research aims to make sense of large amounts of data.",
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  "images/facebook.png",
                  scale: 2,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "images/web.png",
                scale: 2,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "images/youtube.png",
                scale: 2,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Services",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Data Science\nMachine Learning\nDeep Learning\nBig Data",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            "Community",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Our Service\nDocumentation\nWhat you do?",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Contact Us",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Daffodil Smart City,Ashulia,Dhaka\nEmail:arman.swe@diu.edu.bd\nPhone:+880-167338289",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const Divider(
            color: Colors.black,
          ),
          const Text(
            "© 2022 All Rights Reserved By\nDaffodilInternational University",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget NLP() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Natural Language\nProcessing (NLP)",
            style: TextStyle(
              color: Color(0xFF168773),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15) // Adjust the radius as needed
                  ),
              child: Image.asset("images/nlp.jpg")),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Natural language processing (NLP) is the ability of a computer program to understand human language as it is spoken and written -- referred to as natural language. It is a component of artificial intelligence (AI). NLP has existed for more than 50 years and has roots in the field of linguistics. Bangla NLP:- Bangla has a rich heritage of literature that dates back to almost a thousand years. Even with a huge number of native speakers, Bengali is lagging behind in Natural Language Processing (NLP). From government services to education, from agriculture to healthcare, Bengali-NLP research would make lives easier for everyone.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget ComputerVision() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Computer Vision",
            style: TextStyle(
              color: Color(0xFF168773),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15) // Adjust the radius as needed
                  ),
              child: Image.asset("images/cv.jpg")),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Computer vision is a field of artificial intelligence (AI) that enables computers and systems to derive meaningful information from digital images, videos and other visual inputs — and take actions or make recommendations based on that information. Computer vision is the field of computer science that focuses on replicating parts of the complexity of the human vision system and enabling computers to identify and process objects in images and videos in the same way that humans do. Until recently, computer vision only worked in limited capacity.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget Statistics() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Statistics And Probability",
            style: TextStyle(
              color: Color(0xFF168773),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15) // Adjust the radius as needed
                  ),
              child: Image.asset("images/statistics.png")),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Statistics and probability represent a considerable area of mathematics that also greatly impacts data science. This specialty area is all about establishing and working with finite figures as well as the effects of the ever-present factor of “chance” in all things. Those additionally learned in this particular area are a great asset to general and specialized areas of the data science industry today. Probability and Statistics form the basis of Data Science. The probability theory is very much helpful for making the prediction. Estimates and predictions form an important part of Data science.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
