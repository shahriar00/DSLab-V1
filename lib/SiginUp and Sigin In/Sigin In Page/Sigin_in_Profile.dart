import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dslab/Profile_Screen/Profile.dart';
import 'package:dslab/SiginUp%20and%20Sigin%20In/Buttom%20Navigation%20Bar/home.dart';
import 'package:dslab/notification/view/notification_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../Custom Design/Profile_Clip_Call.dart';
import '../Firebase/Google_auth_firebase.dart';
import 'Forget_Password.dart';

class SigininPage extends StatefulWidget {
  const SigininPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SigininPage> createState() => _SigininPageState();
}

class _SigininPageState extends State<SigininPage> {
  String email = "", password = "";
  final FocusNode _focusNodePassword = FocusNode();
  bool rememberMe = false;
  bool isPasswordVisible = false;

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  userLogin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // Check if the user's email is verified
      if (userCredential.user!.emailVerified) {
        // Fetch additional user information
        String userName = userCredential.user!.displayName ?? "";
        String userImage = userCredential.user!.photoURL ?? "";

        print(userName);
        print(userImage);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(
              name: userName, PhotoUrl: userImage,

              // userEmail: userCredential.user!.email!,
              // userName: userName,
              // userImage: userImage,
            ),
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            "Sign in successful.",
            style: TextStyle(fontSize: 18.0),
          ),
        ));
      } else {
        // If email is not verified, sign out and show a message
        await FirebaseAuth.instance.signOut();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            "Please verify your email before signing in.",
            style: TextStyle(fontSize: 18.0),
          ),
        ));
      }
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException as before
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No User Found for that Email",
              style: TextStyle(fontSize: 18.0),
            )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0),
            )));
      }
    }
  }

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ProfileClip(),
          Column(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              
              //height:double.infinity,
              color: const Color.fromARGB(255, 32, 72, 149),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 40,
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text("Let’s Sign in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.7),
                                offset: const Offset(0, 5),
                                blurRadius: 10,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30.h,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w600,
                            height: 0.h,
                          )),
                      Gap(20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
                          ),
                          Text("Login to Your Account to Continue your Courses",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11.h,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w100,
                                height: 0.h,
                              )),
                        ],
                      )
                    ],
                  ),
                  const Gap(35),
                  Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Form(
                        key: _formkey,
                        child: Column(children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 6.0),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                return null;
                              },
                              controller: mailcontroller,
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFFb2b7bf),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Color(0xFFb2b7bf),
                                      fontSize: 18.0)),
                            ),
                          ),
                          const Gap(
                            18.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 6.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              controller: passwordcontroller,
                              style: const TextStyle(color: Colors.black),
                              obscureText: !isPasswordVisible,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Color(0xFFb2b7bf),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                  child: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(0xFFb2b7bf),
                                  ),
                                ),
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                  color: Color(0xFFb2b7bf),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                          const Gap(
                            7.0,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    rememberMe = !rememberMe;
                                  });
                                },
                                child: Container(
                                  width: 16.0, // Set a fixed width
                                  height: 16.0, // Set a fixed height
                                  // padding: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: rememberMe
                                          ? Colors.green
                                          : Colors.grey,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: rememberMe
                                      ? Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size:
                                              11.0, // Set a fixed size for the check icon
                                        )
                                      : null,
                                ),
                              ),
                              SizedBox(height: 20,),
                              const Text(
                                ' Remember Me',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  height: 0,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 55.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPassword()));
                                },
                                child: const Text("Forgot Password?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Mulish',
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        height: 0,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                          const Gap(30),
                          GestureDetector(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  email = mailcontroller.text;

                                  password = passwordcontroller.text;
                                });
                              }
                              userLogin();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(9, 129, 107, 1),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 4,
                                      blurRadius: 10,
                                      offset: const Offset(1, 4),
                                    )
                                  ]),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        'Sign In',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontFamily: 'Jost',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                         SizedBox(height: 20,),
                          const Text(
                            "Or Continue With",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 17.0,
                                height: 0,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w500),
                          ),
                          const Gap(
                            25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    print("Shenul MG");
                                    FirebaseService.signInwithGoogle(
                                        context); // Handle Google sign-in here
                                  },
                                  child: Center(
                                    child: Image.asset(
                                      "images/google.jpeg",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(50),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                    child: Image.asset(
                                  "images/apple.jpeg",
                                  height: 20,
                                  width: 20,
                                )),
                              )
                            ],
                          ),
                        ]),
                      ))
                ],
              ),
            ),
          ])
        ])));
  }
}
