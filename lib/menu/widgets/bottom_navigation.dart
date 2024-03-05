import 'package:dslab/Home_Screen/view/screen/homeScreen.dart';
import 'package:dslab/SiginUp%20and%20Sigin%20In/Buttom%20Navigation%20Bar/bottom_profile.dart';
import 'package:dslab/events/event.dart';
import 'package:dslab/menu/view/menu_view.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}