import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class aboutUsImage extends StatelessWidget {
  const aboutUsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(.6), // Increased opacity for more visibility
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          height: 420,
          width: 367,
          color: Color.fromRGBO(217, 217, 217, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset('assets/1751117722411960.png'),
              ),
              Gap(6),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Image.asset('assets/1751117812567999.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
