import 'package:drop_shadow/drop_shadow.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:dslab/about/widgets/custom_design.dart';
import 'package:dslab/admin/widgets/custom_container.dart';
import 'package:dslab/contact/admin/messege_view.dart';
import 'package:dslab/notification/admin/view/pdf_upload.dart';
import 'package:dslab/notification/view/notification_view.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
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
                  decoration: const BoxDecoration(
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
                            "Admin Panel",
                            style: TextStyle(
                              fontSize: 40,
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
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PdfUploadPage()));
                },
                child: AdminDataContainer(
                  textdata1:
                      "Welcome to the Admin Panel. Now you can view and upload the pdf file.",
                  textdata2: "Okay! Let's Go.",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               GestureDetector(
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactHereMessegeView()));
                },
                 child: AdminDataContainer(
                  textdata1:
                      "Welcome to the Admin Panel. Now you can view the Suggestion.",
                  textdata2: "Okay! Let's Go.",
                               ),
               ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
