import 'package:dslab/notification/widgets/custom_design.dart';
import 'package:dslab/notification/widgets/notification_list.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
      body: ListView(
        children:[  Column(
          children: [
           const Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 30),
                  child: Text(
                    "Notification",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0, // shadow blur
                          color: Colors.grey, // shadow color
                          offset: Offset(
                              2.0, 2.0), // how much shadow will be shown
                        ),
                      ],
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF168773),
                    ),
                  ),
                ),
              ],
            ),
            ClipPath(
              clipper: CustomDesign(),
              child: Container(
                height: deviceHeight*2,
                width: deviceWidth,
                color: Color(0xFF204895),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const SizedBox(
                      height: 150,
                    ),
                  
                    Expanded(child: NotificationListsWithCards()),
              
                  ],
                ),
              ),
            ),
          ],
        ),]
      ),
    );
  }
}