import 'package:dslab/notification/view/notification_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomProfilebutton.dart';
import 'Profile_clip.dart';

class ProfileScreen extends StatefulWidget {
  String name;
  String PhotoUrl;
  // String UsenName;

  ProfileScreen({
    Key? key,
    required this.name,
    required this.PhotoUrl,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    String name = user?.displayName ?? "";
    String urPhotoUrll = user?.photoURL ?? "";

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
                         onTap: (){ 
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
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
      
      body: Container(
        color: Color.fromRGBO(32, 72, 149, 1),
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 70),
                height: 600.h,
                width: 360.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(51, 110, 117, 1),
                      Color.fromRGBO(45, 71, 135, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 90.h,
                    ),
                    CustomTextButton(
                      prefixIcon: Icons.person_3_outlined,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonText: "Custom Button",
                      onPressed: () {
                        print("Button Clicked!");
                      },
                      language: '',
                      widthOfSize: 150,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomTextButton(
                      prefixIcon: Icons.notifications,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonText: "Notifications   ",
                      onPressed: () {
                        print("Button Clicked!");
                      },
                      language: '',
                      widthOfSize: 150,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomTextButton(
                      prefixIcon: Icons.language_outlined,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonText: "Language",
                      onPressed: () {
                        print("Button Clicked!");
                      },
                      language: 'English (US)',
                      widthOfSize: 100,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomTextButton(
                      prefixIcon: Icons.visibility_sharp,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonText: "Dark Mode       ",
                      onPressed: () {
                        print("Button Clicked!");
                      },
                      language: '',
                      widthOfSize: 150,
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    CustomTextButton(
                      prefixIcon: Icons.logout,
                      suffixIcon: Icons.arrow_forward_ios,
                      buttonText: "Logout            ",
                      onPressed: () {
                        print("Button Clicked!");
                      },
                      language: '',
                      widthOfSize: 150,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 190.h,
                color: Colors.transparent,
                child: profileClip(
                  photoUrl: urPhotoUrll,
                ),
              ),
            ),
            Positioned(
              child: Container(
                alignment: Alignment.topLeft,
                height: 80.h,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        name,
                        style: GoogleFonts.jost(
                          color: Color.fromRGBO(9, 129, 107, 1),
                          fontSize: ScreenUtil().setSp(20),
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        user?.email ?? "",
                        style: GoogleFonts.jost(
                          color: Color.fromRGBO(84, 84, 84, 1),
                          fontSize: ScreenUtil().setSp(13.5),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
