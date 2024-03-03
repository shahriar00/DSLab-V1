import 'package:dslab/about/widgets/custom_design.dart';
import 'package:dslab/admin/widgets/admin_cutom_button.dart';
import 'package:dslab/contact/widgets/custom_button.dart';
import 'package:dslab/notification/admin/view/pdf_upload.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminSignIn extends StatefulWidget {
  const AdminSignIn({super.key});

  @override
  State<AdminSignIn> createState() => _AdminSignInState();
}

class _AdminSignInState extends State<AdminSignIn> {

  
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController mailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  final String validEmail = 'admin@gmail.com';
  final String validPassword = '123456';

  void _login() {
    String email = mailcontroller.text.trim();
    String password = passwordcontroller.text.trim();

    // Check if email and password are valid
    if (email == validEmail && password == validPassword) {
      // Navigate to  dashboard or perform any action here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PdfUploadPage()),
      );
    } else {
      // Show error message for invalid login
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Invalid Credentials'),
            content: Text('Please enter valid email and password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }}

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
          height: deviceHeight,
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
                            "Admin",
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
        
              AdminPage(),
             
            ],
          ),
        ),
      ),
    );
  }
Widget AdminPage(){ 
  return Container(
    padding: EdgeInsets.only(left: 10,right: 10),
    child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [ 
         Text("Welcome to the Data Science Lab Admin Panel",style: TextStyle( 
                    fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white
                  ),),
                  Gap(40),
        Text("Let’s Sign in",style: TextStyle( 
                    fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white
                  ),),
                  Gap(10),
              Text("Login to Your Account and Explores everything",style: TextStyle( 
                    fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white
                  ),),    
        Gap(30),
         AdminCustomButton(
                  buttonheight: 60,
                  buttonwidth: MediaQuery.of(context).size.width,
                  buttoncolor: Colors.white,
                  hintTextdata: "Enter your Email",
                  controller: mailcontroller),
                   const SizedBox(
                height: 20,
              ),
              AdminCustomButton(
                  buttonheight: 60,
                  buttonwidth: MediaQuery.of(context).size.width,
                  buttoncolor: Colors.white,
                  hintTextdata: "Enter Your Password",
                  controller: passwordcontroller),
                Gap(40),

                GestureDetector(
                  onTap: (){
                     _login();
                  },
                  child: Container( 
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF0D685E)
                    ),
                    child: const Center(child: Text("Sign In",style: TextStyle( 
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                    ),)),
                  ),
                ),

               Gap(20)
      ],
    ),
  );
}
   
  }

  