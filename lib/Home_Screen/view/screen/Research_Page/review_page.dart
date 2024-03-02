import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class reviewPage extends StatelessWidget {
  final String number;
  final String assetIcon;
  final String textOfcard;
  final double imageScaleSize;
  final double gapBetweenImageAndText;
  final double gapFromTopToImage;
  final double ContainerHeigh;

  const reviewPage({
    required this.number,
    required this.assetIcon,
    required this.textOfcard,
    required this.imageScaleSize,
    required this.gapBetweenImageAndText,
    required this.gapFromTopToImage,
    required this.ContainerHeigh,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8 * 2),
      child: Container(
        height: ContainerHeigh,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.6),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(1, 4))
            ]),
        child: ClipRRect(
          child: Column(
            children: [
              Gap(gapFromTopToImage),
              Padding(
                padding: const EdgeInsets.only(top: 8.0 * 2),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    assetIcon,
                    scale: imageScaleSize,
                  ),
                ),
              ),
              Gap(gapBetweenImageAndText),
              Container(
                alignment: Alignment.center,
                child: Text(
                  number,
                  style: GoogleFonts.allerta(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Gap(10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  textOfcard,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20.55,
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
