import 'package:dslab/resource/customDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/footer_view.dart';
import 'cataData.dart';
import 'dataSet.dart';
import 'imaData.dart';

class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
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
                        "Resources",
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
         
         
           
            dataset(),
            const SizedBox(height: 20,),
            catadata(),
            const SizedBox(height: 20,),
            imadata(),
            const SizedBox(height: 20,),
            const Footer(),         
            const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   final deviceHeight = MediaQuery.of(context).size.height;
  //   final deviceWidth = MediaQuery.of(context).size.width;
  //   return Scaffold(
  //     appBar: AppBar(
  //       elevation: 0,
  //       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
  //       title: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           SizedBox(
  //             width: MediaQuery.of(context).size.width / 4,
  //             child: Image.asset(
  //               'images/ds.png',
  //               height: 40, // Adjust the height as needed
  //               width: 40, // Adjust the width as needed
  //             ),
  //           ),
  //           SizedBox(width: 100),
  //           SizedBox(
  //             width: MediaQuery.of(context).size.width / 4,
  //             child: Image.asset(
  //               "images/diu.png",
  //               height: 40, // Adjust the height as needed
  //               width: 40, // Adjust the width as needed
  //             ),
  //           ),
  //           InkWell(
  //             onTap: () {},
  //             child: Image.asset(
  //               "images/notification.gif",
  //               height: 40, // Adjust the height as needed
  //               width: 40, // Adjust the width as needed
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //     body: SingleChildScrollView(
  //       child: Container(
  //         child: Column(
  //           children: [
  //             const Row(
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.only(left: 35, top: 30),
  //                   child: Text(
  //                     "Resources",
  //                     style: TextStyle(
  //                       shadows: [
  //                         Shadow(
  //                           blurRadius: 10.0,
  //                           color: Colors.grey,
  //                           offset: Offset(2.0, 2.0),
  //                         ),
  //                       ],
  //                       fontSize: 35,
  //                       fontWeight: FontWeight.bold,
  //                       color: Color(0xFF168773),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             ClipPath(
  //               clipper: CustomDesign(),
  //               child: Container(
  //                 height: deviceHeight * 2.85,
  //                 width: deviceWidth,
  //                 color: Color(0xFF204895),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     const SizedBox(
  //                       height: 130,
  //                     ),
  //                     dataset(),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     catadata(),
  //                     const SizedBox(
  //                       height: 10,
  //                     ),
  //                     imadata(),
  //                   const SizedBox(height: 20.0),
  //                     Expanded(child: const Footer())
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

// Widget Footer() {
//   return Container(
//     padding: EdgeInsets.only(left: 20, right: 20),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         Image.asset(
//           "images/dsl.jpg",
//           scale: 6,
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         const Text(
//           "We are a team of out-of-the-box thinkers, with deep expertise in analytics. Our research aims to make sense of large amounts of data.",
//           style: TextStyle(fontSize: 14, color: Colors.white),
//           textAlign: TextAlign.justify,
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Image.asset(
//                 "images/fb.png",
//                 scale: 2,
//               ),
//             ),
//             const SizedBox(
//               width: 5,
//             ),
//             Image.asset(
//               "images/google.png",
//               scale: 2,
//             ),
//             const SizedBox(
//               width: 5,
//             ),
//             Image.asset(
//               "images/youtube.png",
//               scale: 2,
//             )
//           ],
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         const Text(
//           "Services",
//           style: TextStyle(
//               fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         const Text(
//           "Data Science\nMachine Learning\nDeep Learning\nBig Data",
//           style: TextStyle(fontSize: 14, color: Colors.white),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         const Text(
//           "Community",
//           style: TextStyle(
//               fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         const Text(
//           "Our Service\nDocumentation\nWhat you do?",
//           style: TextStyle(fontSize: 16, color: Colors.white),
//         ),
//         const SizedBox(
//           height: 18,
//         ),
//         const Text(
//           "Contact Us",
//           style: TextStyle(
//               fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         const Text(
//           "Daffodil Smart City,Ashulia,Dhaka\nEmail:arman.swe@diu.edu.bd\nPhone:+880-167338289",
//           style: TextStyle(fontSize: 14, color: Colors.white),
//         ),
//         const Divider(
//           color: Colors.black,
//         ),
//         const Text(
//           "© 2022 All Rights Reserved By\nDaffodilInternational University",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//             shadows: [
//               Shadow(
//                 blurRadius: 10.0,
//                 color: Color.fromARGB(255, 18, 18, 18),
//                 offset: Offset(4.0, 4.0),
//               ),
//             ],
//           ),
//         )
//       ],
//     ),
//   );
//}
