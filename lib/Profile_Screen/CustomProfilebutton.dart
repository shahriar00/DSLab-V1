import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomTextButton extends StatelessWidget {
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String buttonText;
  final VoidCallback onPressed;
  final String language;
  final double widthOfSize;

  const CustomTextButton({
    required this.prefixIcon,
    required this.suffixIcon,
    required this.buttonText,
    required this.onPressed,
    required this.language,
    required this.widthOfSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(16.0), // Set text color
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(prefixIcon, color: Colors.white), // Set icon color
          SizedBox(width: 8.0),
          Text(
            buttonText,
            style: TextStyle(color: Colors.white), // Set text color
          ),
          //SizedBox(width: 150.0.w),
          //
          Gap(widthOfSize.w),
          Text(
            language,
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            suffixIcon,
            color: Colors.white,
            size: 17,
          ), // Set icon color
        ],
      ),
    );
  }
}
