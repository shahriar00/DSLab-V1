import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profileClip extends StatelessWidget {
  final String photoUrl;

  profileClip({super.key, required this.photoUrl});
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Container(
      //height: 223.h,
      // width: 414,
      color: Colors.transparent,
      child: ClipPath(
        clipper: ProfileClipCode(),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 65, right: 1.2),
                  child: InkWell(
                    child: Container(
                      width: 720 * 0.17.w,
                      height: 720 * 0.17.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundImage: photoUrl.isNotEmpty
                            ? NetworkImage(photoUrl)
                            : NetworkImage(
                                'data:image/png;base64,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'), // Replace with your default image URL
                        radius: 70,
                        // Replace with the path to your image
                        //width: 70.0, // Set the image width
                        // height: 70.0, // Set the image height
                        // fdjust the fit as needed
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileClipCode extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(size.width * -0.02222222, size.height * -0.02886428);
    path_0.lineTo(size.width * -0.02222222, size.height * -0.02910747);
    path_0.lineTo(size.width * -0.02211200, size.height * -0.02886433);
    path_0.lineTo(size.width * 1.022222, size.height * -0.02910747);
    path_0.lineTo(size.width * 0.6131472, size.height * 0.8670773);
    path_0.cubicTo(
        size.width * 0.5251167,
        size.height * 1.037629,
        size.width * 0.4749722,
        size.height * 1.036799,
        size.width * 0.3839500,
        size.height * 0.8670773);
    path_0.lineTo(size.width * -0.02211200, size.height * -0.02886433);
    path_0.lineTo(size.width * -0.02222222, size.height * -0.02886428);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
