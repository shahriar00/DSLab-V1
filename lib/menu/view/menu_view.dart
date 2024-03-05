import 'package:dslab/Home_Screen/view/screen/homeScreen.dart';
import 'package:dslab/SiginUp%20and%20Sigin%20In/Buttom%20Navigation%20Bar/bottom_profile.dart';
import 'package:dslab/Tranning/Pages/TrainingPage.dart';
import 'package:dslab/about/view/about_us_view.dart';
import 'package:dslab/contact/view/contact_view.dart';
import 'package:dslab/events/event.dart';
import 'package:dslab/notification/view/notification_view.dart';
import 'package:dslab/reasearch_publication/view/research_publication.dart';
import 'package:dslab/research_area/view/research_area.dart';
import 'package:dslab/resource/resources.dart';
import 'package:dslab/team/ourteam.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // properties of the front image
  double image_height = 400,
      image_width = 400,
      image_posX = -10,
      image_posY = 400;

  // Properties of the shape
  double FrontShape_height = 550,
      FrontShape_width = 400,
      Front_border_x = 50,
      Front_border_y = 180,
      Back_border_x = 50,
      Back_border_y = 180,
      BackShape_height = 800,
      BackShape_width = 480,
      Shape_posX = 80,
      Shape_posY = 390,
      BackShapePosition = 30;

  // Keeps track of current page
  bool pageChanged = false;

  // Animation transition time. Change value to speed up or slow down the transition
  Duration AnimationTime = Duration(milliseconds: 900);

  // Function to change page content
  void page_change() {
    setState(() {
      BackShape_height += 300;
      FrontShape_height += 400;
      Shape_posY -= 200;
      image_height += 20;
      image_width += 20;
      Front_border_x += 300;
      Front_border_y += 400;
      Back_border_x += 100;
      Back_border_y -= 400;
      BackShapePosition -= 30;
      BackShape_width += 50;
      image_posX += 8;
      image_posY -= 200;
      pageChanged = !pageChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    double mq = MediaQuery.of(context).size.width;

    Column first_page = Column(
      children: [
        // Research
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: page_change,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Research',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Our Team
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const ourTeam()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Our Team',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Training
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const TrainingPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Training',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Resources
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const Resources()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Resources',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // About Us
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const AboutUsScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'About Us',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Contact
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const ContactScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Contact',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),

            
          ),
        ),

    
      ],
    );
    Widget second_page = Column(
      children: [
        // Research
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResearchArea()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Research Area',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
const SizedBox(height: 10,),
        // Our Team
        SizedBox(
          width: mq * 0.9,
          child: ElevatedButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const ResearchPublication()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: const Text(
              'Research Publication',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
      ],
    );

    // <--- second page end

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // for header --->

            Positioned(
              top: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // dsl image section --->

                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Image(
                        image: AssetImage('images/logo2.png'),
                        width: 100,
                        height: 35,
                      ),
                    ),

                    // diu logo section --->

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage('images/diu.png'),
                            width: 100,
                            height: 35,
                          ),

                          // bell icon button --->

                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
                            },
                            icon: Image.asset(
                              'images/notification.gif',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // <--- header section end

            // elevated button section --->

            Positioned(
                top: 80,
                left: 20,
               
                child: pageChanged ? second_page : first_page),

            // <--- elevated button section end

            // background part --->

            AnimatedPositioned(
              duration: AnimationTime,
              top: Shape_posY,
              left: Shape_posX,
           
              child: Stack(clipBehavior: Clip.none, children: [
                Positioned(
                  right: BackShapePosition,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AnimatedContainer(
                      duration: AnimationTime,
                      height: BackShape_height,
                      width: BackShape_width,
                      decoration: BoxDecoration(
                          color: Color(0xffe6eaeb),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(650, 1000),
                              bottomLeft: Radius.elliptical(
                                  Back_border_x, Back_border_y))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20),
                  child: AnimatedContainer(
                    duration: AnimationTime,
                    height: FrontShape_height,
                    width: FrontShape_width,
                    decoration: BoxDecoration(
                        color: Color(0xFF1D458B),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(600, 800),
                            bottomLeft: Radius.elliptical(
                                Front_border_x, Front_border_y))),
                  ),
                ),
              ]),
            ),

            // <--- background part end

            // --> foreground image

            AnimatedPositioned(
              duration: AnimationTime,
              top: image_posY,
              left: image_posX,
              child: Stack(children: [
                Positioned(
                    top: MediaQuery.of(context).size.height * .1 - 85,
                    left: MediaQuery.of(context).size.width * .1 - 45,
                    child: Opacity(
                        opacity: 0.7,
                        child: Image.asset("images/menupage.png",
                            height: image_height,
                            width: image_width,
                            color: Colors.black))),
                ClipRect(
                    child: Image.asset(
                  "images/menupage.png",
                  height: image_height,
                  width: image_width,
                ))
              ]),
            ),

            // <-- foreground image end

            // for footer --->
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Add 1st IconButton with Image
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/home.png',
                            width: 50,
                            height: 50,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                          },
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    // Add 2nd IconButton with Image
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/event.png',
                            width: 50,
                            height: 50,
                          ),
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const Event()));
                          },
                        ),
                        const Text(
                          'Events',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    // Add 3rd IconButton with Image
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/menu.png',
                            width: 50,
                            height: 50,
                          ),
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const MenuPage()));
                          },
                        ),
                        const Text(
                          'Menu',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    // Add 4th IconButton with Image
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/club.png',
                            width: 50,
                            height: 50,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          'DS Club',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    // Add 5th IconButton with Image
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/profile.png',
                            width: 50,
                            height: 50,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage(),));
                          },
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            // <---footer section end
          ],
        ),
      ),
    );
  }
}
