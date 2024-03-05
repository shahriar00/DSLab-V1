import 'package:flutter/material.dart';
import '../Sigin In Page/Sigin_in_Profile.dart';
import '../Sigin In Page/Sigin_up_Profile.dart';
import 'club.dart';
import 'event.dart';
import 'home.dart';
import 'menu.dart';
import 'bottom_profile.dart';

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key, required String title});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int selectedTab = 0;
  final List pages = [
    HomePage(),
    EventPage(),
    MenuPage(),
    ClubPage(),
    ProfilePage(),
    SignUp(
      name: '',
      Image_Url: '',
    ),
    SigininPage(),
  ];

  @override
  Widget build(BuildContext context) {
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
      
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedTab,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 32, 72, 149),
          onTap: (index) {
            setState(() {
              selectedTab = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Event"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "DS Club"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ]),
    );
  }
}
