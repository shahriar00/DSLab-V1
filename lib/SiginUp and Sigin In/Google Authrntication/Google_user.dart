// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class UserProfile extends StatefulWidget {
//   UserProfile({Key? key}) : super(key: key);
//
//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }
//
// class _UserProfileState extends State<UserProfile> {
//   Widget buildEmailSection(User? user) {
//     try {
//       if (user != null) {
//         return Text("Email: ${user.email ?? 'Not available'}");
//       } else {
//         throw Exception("User is null");
//       }
//     } catch (e) {
//       print("Error: $e");
//       return const Text("Error fetching email");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     User? user = FirebaseAuth.instance.currentUser;
//
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               child: buildEmailSection(user),
//             ),
//             if (user != null && user.displayName != null)
//               Text("Display Name: ${user.displayName!}")
//             else
//               const Text("Display Name not available"),
//             if (user != null && user.photoURL != null)
//               CircleAvatar(
//                 backgroundImage: NetworkImage(user.photoURL!),
//                 radius: 70,
//               )
//             else
//               const Text("Profile Picture not available"),
//           ],
//         ),
//       ),
//     );
//   }
// }
