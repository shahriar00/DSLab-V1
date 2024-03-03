import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Color(0xFF204895),
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
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}