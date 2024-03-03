import 'package:dslab/menu/view/menu_view.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Adjust alignment as needed
        children: [
          _buildNavItem('images/home.png', 'Home', () {}),
          _buildNavItem('images/event.png', 'Events', () {}),
          _buildNavItem('images/menu.png', 'Menu', () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MenuPage()));
          }),
          _buildNavItem('images/club.png', 'DS Club', () {}),
          _buildNavItem('images/profile.png', 'Profile', () {}),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconPath, String label, VoidCallback onPressed) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Image.asset(
            iconPath,
            width: 50,
            height: 50,
          ),
          onPressed: onPressed,
        ),
        Text(
          label,
          style:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
        ),
      ],
    );
  }
}
