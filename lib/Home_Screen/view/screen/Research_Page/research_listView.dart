import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class researchListView extends StatelessWidget {
  researchListView({super.key});
  final List<String> info = [
    'Perfect Time Management',
    'Perfect Knowledge about ML & AI Algorithm',
    'Easily understanding the Real-life Data',
    'Advance Programming Language Knowledge',
    'Advanced & Updated Technology',
    '4/7 Expert Lab Active Support',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .55,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.sizeOf(context).height * .0769,
            child: ListTile(
              leading: Image.asset(
                'images/massege.png', // Replace with your image URL
                width: 22,
                height: 22,
              ),
              title: Text(
                info[index],
                style: GoogleFonts.allerta(color: Colors.white, fontSize: 16),
              ), // Replace with your text
            ),
          );
        },
      ),
    );
  }
}
