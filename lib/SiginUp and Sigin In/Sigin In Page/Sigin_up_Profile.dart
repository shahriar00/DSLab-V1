import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dslab/SiginUp%20and%20Sigin%20In/Buttom%20Navigation%20Bar/event.dart';

import 'package:dslab/SiginUp%20and%20Sigin%20In/Sigin%20In%20Page/Terms&Condition.dart';
import 'package:dslab/menu/widgets/bottom_navigation.dart';
import 'package:dslab/notification/view/notification_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../Profile_Screen/Profile.dart';
import '../Custom Design/Profile_Clip_Call.dart';
import '../Firebase/Google_auth_firebase.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'Sigin_in_Profile.dart';

class SignUp extends StatefulWidget {
  String name = "";
  String Image_Url = "";

  SignUp({Key? key, required this.name, required this.Image_Url})
      : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

Future<void> sendVerificationEmail() async {
  final user = FirebaseAuth.instance.currentUser!;
  await user.sendEmailVerification();
}

class _SignUpState extends State<SignUp> {
  bool AgreeTO = false;
  bool isPasswordVisible = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String email = "", password = "", name = "", imageURL = "";
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // Validate email function
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // Validate password function
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

// ...

  // registration() async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //           await _auth.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //
  //       // Send email verification
  //       await userCredential.user!.sendEmailVerification();
  //
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         content: Text(
  //           "Registered Successfully. Please check your email for verification.",
  //           style: TextStyle(fontSize: 20.0),
  //         ),
  //       ));
  //
  //       // Wait for a short time to allow for email verification
  //       await Future.delayed(const Duration(seconds: 40));
  //
  //       // Reload the user to get the latest information
  //       await userCredential.user!.reload();
  //
  //       // Check if the email is verified
  //       if (userCredential.user!.emailVerified) {
  //         // Storing registration info in Firestore
  //         await _firestore
  //             .collection('users')
  //             .doc(userCredential.user!.uid)
  //             .set({
  //           'email': email,
  //           // Add more fields if needed
  //         });
  //
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           content: Text(
  //             "Email verified. Signed in!",
  //             style: TextStyle(fontSize: 20.0),
  //           ),
  //         ));
  //
  //         // Navigate to the next page
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => const EventPage()),
  //         );
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Email verification required. Please check your email.",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       }
  //     } on FirebaseAuthException catch (e) {
  //       // Handle FirebaseAuthException as before
  //       if (e.code == 'weak-password') {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Password Provided is too Weak",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       } else if (e.code == "email-already-in-use") {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Account Already Exists",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       }
  //     }
  //   }
  // }

  // registration() async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //           await _auth.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //
  //       // Send email verification
  //       await userCredential.user!.sendEmailVerification();
  //
  //       // Wait for a short time to allow for email verification
  //       await Future.delayed(const Duration(seconds: 5));
  //
  //       // Check if the email is verified
  //       await userCredential.user!.reload();
  //       if (userCredential.user!.emailVerified) {
  //         // If email is verified, sign in
  //         await _auth.signInWithEmailAndPassword(
  //             email: email, password: password);
  //
  //         // Storing registration info in Firestore
  //         await _firestore
  //             .collection('users')
  //             .doc(userCredential.user!.uid)
  //             .set({
  //           'email': email,
  //           // Add more fields if needed
  //         });
  //
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           content: Text(
  //             "Registered Successfully. Email verified. Signed in!",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //
  //         // Navigate to the other page (UserProfile in this case)
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => UserProfile()),
  //         );
  //       } else {
  //         // If email is not verified, show a message
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Please varify your Email",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       }
  //     } on FirebaseAuthException catch (e) {
  //       // Handle FirebaseAuthException as before
  //     }
  //   }
  // }

  // registration() async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //           await _auth.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //
  //       // Send email verification
  //       await userCredential.user!.sendEmailVerification();
  //
  //       // Wait for a short time to allow for email verification
  //       await Future.delayed(const Duration(seconds: 10));
  //
  //       // Check if the email is verified
  //       await userCredential.user!.reload();
  //       if (userCredential.user!.emailVerified) {
  //         // If email is verified, sign in
  //         await _auth.signInWithEmailAndPassword(
  //             email: email, password: password);
  //
  //         // Storing registration info in Firestore
  //         await _firestore
  //             .collection('users')
  //             .doc(userCredential.user!.uid)
  //             .set({
  //           'email': email,
  //           // Add more fields if needed
  //         });
  //
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           content: Text(
  //             "Registered Successfully. Email verified. Signed in!",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //
  //         // Navigate to the other page (UserProfile in this case)
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => UserProfile()),
  //         );
  //       } else {
  //         // If email is not verified, show a message
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Incorrect Email found.",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       }
  //     } on FirebaseAuthException catch (e) {
  //       // Handle FirebaseAuthException as before
  //     }
  //   }
  // }

  // registration() async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //           await _auth.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //
  //       // Send email verification
  //       await userCredential.user!.sendEmailVerification();
  //
  //       // Check if the email is already verified
  //       if (userCredential.user!.emailVerified) {
  //         // If email is verified, proceed with signing in
  //         await FirebaseAuth.instance.signInWithEmailAndPassword(
  //           email: email,
  //           password: password,
  //         );
  //
  //         // Storing registration info in Firestore
  //         await _firestore
  //             .collection('users')
  //             .doc(userCredential.user!.uid)
  //             .set({
  //           'email': email,
  //           // Add more fields if needed
  //         });
  //
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           content: Text(
  //             "Registered Successfully. Please check your email for verification.",
  //             style: TextStyle(fontSize: 20.0),
  //           ),
  //         ));
  //
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => UserProfile()),
  //         );
  //       } else {
  //         // If email is not verified, show a message
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Registered Successfully. Please check your email for verification and sign in once verified.",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       }
  //     } on FirebaseAuthException catch (e) {
  //       // Handle FirebaseAuthException as before
  //     }
  //   }
  // }

  registration() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        // Send email verification
        await userCredential.user!.sendEmailVerification();

        // Get a reference to the users collection in Firestore
        CollectionReference users = _firestore.collection('users');

        // Upload image to Firebase Storage and get the download URL
        // String imageURL = await uploadImageToFirebaseStorage(
        //     userCredential.user!.uid, userImageFile);

        // Store user data in Firestore
        await users.doc(userCredential.user!.uid).set({
          'email': email,
          'name': name,
          'imageURL': imageURL,
          // Add more fields if needed
        });
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'email': email,
          'name': name, // Add user's name
          'photoUrl': imageURL, // Add user's image URL
          // Add more fields if needed
        });

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Registered Successfully. Please check your email for verification.",
            style: TextStyle(fontSize: 20.0),
          ),
        ));
      } on FirebaseAuthException catch (e) {
        // Handle FirebaseAuthException as before
        {
          if (e.code == 'weak-password') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18.0),
              ),
            ));
          } else if (e.code == "email-already-in-use") {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already Exists",
                style: TextStyle(fontSize: 18.0),
              ),
            ));
          }
        }
      }
    }
  }

  //
  // registration() async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential = await _auth
  //           .createUserWithEmailAndPassword(email: email, password: password);
  //
  //       // Storing registration info in Firestore
  //       await _firestore.collection('users').doc(userCredential.user!.uid).set({
  //         'email': email,
  //         // Add more fields if needed
  //       });
  //
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         content: Text(
  //           "Registered Successfully",
  //           style: TextStyle(fontSize: 20.0),
  //         ),
  //       ));
  //       // Navigator.push(
  //       //     context, MaterialPageRoute(builder: (context) => UserProfile()));
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'weak-password') {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Password Provided is too Weak",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       } else if (e.code == "email-already-in-use") {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "Account Already Exists",
  //             style: TextStyle(fontSize: 18.0),
  //           ),
  //         ));
  //       }
  //     }
  //   }
  // }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileClip(),
            Column(
              children: [
                Container(
                 height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 32, 72, 149),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 60),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 0,
                            ),
                          ),
                          Text(
                            "Getting Started",
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
                            ),
                          ),
                          Gap(4.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 40),
                              ),
                              Text(
                                "Create an Account to Explore DS Lab",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 14.h,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w100,
                                  height: 0.h,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Gap(35),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 6.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextFormField(
                                  validator: validateEmail,
                                  controller: emailController,
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
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  obscureText: false,
                                ),
                              ),
                              const Gap(20.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 6.0),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Password';
                                    }
                                    return null;
                                  },
                                  controller: passwordController,
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
                                          isPasswordVisible =
                                              !isPasswordVisible;
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
                              SizedBox(height: 15,),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        AgreeTO = !AgreeTO;
                                      });
                                    },
                                    child: Container(
                                      width: 20, // Set a fixed width
                                      height: 19.7, // Set a fixed height
                                      // padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AgreeTO
                                              ? Colors.green
                                              : Colors.white70,
                                          width: 2.8,
                                        ),
                                      ),
                                      child: AgreeTO
                                          ? Icon(
                                              Icons.check_circle,
                                              color: Colors.white,
                                              size:
                                                  14, // Set a fixed size for the check icon
                                            )
                                          : null,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  const Text(
                                    'Agree to',
                                    style: TextStyle(
                                      color: Color.fromRGBO(215, 215, 215, 1),
                                      fontSize: 14.0,
                                      height: 0,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Gap(8),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             const Profile()));
                                    },
                                    child: const Text("Terms & Conditions",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Mulish',
                                            color:
                                                Color.fromRGBO(251, 187, 0, 1),
                                            fontSize: 14.0,
                                            height: 0,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              const Gap(40),
                              GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      email = emailController.text;
                                      password = passwordController.text;
                                    });
                                    registration();
                                  }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 30.0,
                                  ),
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
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Text(
                                            'Sign Up',
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
                              const Gap(10.0),
                              const Text(
                                "Or Continue With",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 17.0,
                                    height: 0,
                                    fontFamily: "Mulish",
                                    fontWeight: FontWeight.w500),
                              ),
                              const Gap(20.0),
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
                              const Gap(15.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Already have an account?",
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 17.0,
                                          height: 0,
                                          fontWeight: FontWeight.w500)),
                                  const Gap(
                                    5.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SigininPage()));
                                    },
                                    child: const Text(
                                      "SIGN IN",
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 17.0,
                                          height: 0,
                                          fontWeight: FontWeight.w700),
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
                ),
              ],
            ),
          ],
        ),
      ),
     
    );
    
  }
  
}
