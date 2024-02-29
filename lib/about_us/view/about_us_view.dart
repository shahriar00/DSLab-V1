import 'package:drop_shadow/drop_shadow.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:dslab/about_us/widgets/custom_design.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
      color: Color(0xFF204895),
          child: Column(
            children: [
              ClipPath(
            clipper: CustomDesign(),
            child: Container(
              height: 200,
              width: deviceWidth,
             // color: Color(0xFF2E9481),
              decoration:const BoxDecoration(
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
                        "About Us",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF238E7B),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0, // shadow blur
                              color: Colors.grey, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
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
             FirstSection(),
            const SizedBox(height: 20,),
             SecondSection(),
            const SizedBox(height: 20,),
             ThirdSection(),
            const SizedBox(height: 20,),
             FourthSection(),
            const SizedBox(height: 20,),

             FifthSection(),
            const SizedBox(height: 20,),
             Footer(),
            
            const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

  Widget ResearchTitle() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 35),
          child: Text(
            "Research Publication",
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 10.0, // shadow blur
                  color: Colors.grey, // shadow color
                  offset: Offset(2.0, 2.0), // how much shadow will be shown
                ),
              ],
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFF168773),
            ),
          ),
        ),
      ],
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
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            height: 18,
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
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 18,
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
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0, // shadow blur
                  color: Color.fromARGB(255, 18, 18, 18), // shadow color
                  offset: Offset(4.0, 4.0), // how much shadow will be shown
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget FirstSection() {
    return Padding(
     padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration( 
          border: Border.all( 
            color: Colors.white,
            width: 2,
          
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/logo2.png",scale: 8,),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "DataScience Lab From\nDepartment Of Software Engineering.\nDaffodil International University",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Department of Software Engineering offers the program of B.Sc. in Software Engineering. The program is designed to produce skilled manpower for global IT market in order to satisfy the growing demands of software professionals throughout the world. It provides the students an opportunity to gain a vast knowledge about the overall Software Engineering process as well as Computer Programming, Computer Systems Engineering, Telecommunication Engineering and Electronics Engineering. The central goal is to create knowledgeable, efficient and skilled software engineering graduates so that they are able to make themselves competent to work on not only with the Software Industries in home country but also with any giant technological organization of the world.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),            
          ],
        ),
      ),
    );
  }

    Widget SecondSection() {
    return Padding(
     padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration( 
          border: Border.all( 
            color: Colors.white,
            width: 2,
          
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/image1.png",scale: 2,),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We Analyze & Visualize The Real Life\nData For Increasing\n\nThe Companies Businesses",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Explore the latest data insights and strategied from top industry leaders. Gain a better understanding of your business and customers through data. Latest Search Trends. Year in Search Report. Google Search Insights.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),            
          ],
        ),
      ),
    );
  }

   Widget ThirdSection() {
    return Padding(
     padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration( 
          border: Border.all( 
            color: Colors.white,
            width: 2,
          
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("images/image2.png",scale: 2,)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "To Data Driven Approach Data Mining,\nVisualization & Optimization",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "A data-driven approach is when decisions are based on analysis and interpretation of hard data rather than on observation. A data-driven approach ensures that solutions and plans are supported by sets of factual information, and not just hunches, feelings and anecdotal evidence.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),            
          ],
        ),
      ),
    );
  }


  Widget FourthSection() {
    return Padding(
     padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration( 
          border: Border.all( 
            color: Colors.white,
            width: 2,
          
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("images/aboutus.png",scale: 2,)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We Analyze & Visualize The Real Life\nData For Increasing Business",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Explore the latest data insights and strategies from top industry leaders. Gain a better understanding of your business and customers through data. Latest Search Trends. Year in Search Report. Google Search Insights.\nBusiness intelligence (BI) can add value to almost any business process, creating a comprehensive view and empowering teams to analyze their own data to find efficiencies and make better day-to-day decisions. Digital transformation is now seen as a key strategic initiative and business intelligence tools have evolved to help companies make the most of their data investments. The response is the rise of modern business intelligence platforms that support data access, interactivity, analysis, discovery, sharing, and governance. While there are some great books about business intelligence that detail practical applications, this article will show off how some specific, big-name companies leverage modern business intelligence platforms.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),            
          ],
        ),
      ),
    );
  }


  Widget FifthSection() {
    return Padding(
     padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration( 
          border: Border.all( 
            color: Colors.white,
            width: 2,
          
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("images/statistics.png",scale: 2,)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Using Machine Learning Algorithm To Data-Driven Approaches-\nData Visualization & Optimization ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "A data-driven approach is when decisions are based on analysis and interpretation of hard data rather than on observation. A data-driven approach ensures that solutions and plans are supported by sets of factual information, and not just hunches, feelings and anecdotal evidence.\nThere are different ways an algorithm can model a problem based on its interaction with the experience or environment or whatever we want to call the input data. It is popular in machine learning and artificial intelligence textbooks to first consider the learning styles that an algorithm can adopt. There are only a few main learning styles or learning models that an algorithm can have and we’ll go through them here with a few examples of algorithms and problem types that they suit. This taxonomy or way of organizing machine learning algorithms is useful because it forces you to think about the roles of the input data and the model preparation process and select one that is the most appropriate for your problem in order to get the best result.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),            
          ],
        ),
      ),
    );
  }
}
