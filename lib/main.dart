import 'dart:io';

import 'package:dslab/Home_Screen/view/screen/homeScreen.dart';
import 'package:dslab/about/view/about_us_view.dart';
import 'package:dslab/admin/view/admin_login.dart';
import 'package:dslab/admin/view/admin_view.dart';
import 'package:dslab/contact/admin/messege_view.dart';
import 'package:dslab/contact/view/contact_view.dart';
import 'package:dslab/contact/widgets/contact_part.dart';
import 'package:dslab/contact/widgets/google_map.dart';
import 'package:dslab/menu/view/menu_view.dart';
import 'package:dslab/notification/admin/login/view/admin_login.dart';
import 'package:dslab/notification/admin/view/pdf_upload.dart';
import 'package:dslab/notification/view/notification_view.dart';
import 'package:dslab/reasearch_publication/view/research_publication.dart';
import 'package:dslab/research_area/view/research_area.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{

   WidgetsFlutterBinding.ensureInitialized();

  // Platform.isAndroid
  //     ? await Firebase.initializeApp(
  //         options: FirebaseOptions(
  //             apiKey: "AIzaSyBSfnrddl5TVyFA7lfgyQ0rZ0nNRkO6Frc",
  //             appId: "1:142339791250:android:5fd611aace7c5d1c14894b",
  //             messagingSenderId: "142339791250",
  //             projectId: "dslab-f23b7",
  //             storageBucket: "dslab-f23b7.appspot.com"))
  //     : Firebase.initializeApp();

      await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyBSfnrddl5TVyFA7lfgyQ0rZ0nNRkO6Frc",
              appId: "1:142339791250:android:5fd611aace7c5d1c14894b",
              messagingSenderId: "142339791250",
              projectId: "dslab-f23b7",
              storageBucket: "dslab-f23b7.appspot.com"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
    return MaterialApp(
      title: 'DSLab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),


 home: MenuPage(),

// home: const AboutUsScreen(),
    );
       },
    );
    
  }
  
}
