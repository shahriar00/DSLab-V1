import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double buttonheight;
  double buttonwidth;
  Color buttoncolor;
  String hintTextdata;
  TextEditingController controller;
  CustomButton({super.key,required this.buttonheight,
  required this.buttonwidth,required this.buttoncolor,required this.hintTextdata,required this.controller});
  @override
  Widget build(BuildContext context) {   
    return Container(
      height: buttonheight,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(25),
        color: buttoncolor
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextFormField( 
          
          controller: controller,
          decoration: InputDecoration( 
            border: InputBorder.none,
            hintText: hintTextdata,
            hintStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)
          ),
        ),
      ),
    );
  }
}


class SubmitButton extends StatelessWidget {
  double buttonheight;
  double buttonwidth;
  Color buttoncolor;
  String buttonText;
  SubmitButton({super.key,required this.buttonheight,
  required this.buttonwidth,required this.buttoncolor,required this.buttonText});
  @override
  Widget build(BuildContext context) {   
    return Container(
      height: buttonheight,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(25),
        color: buttoncolor
      ),
      child: Center(child: Text(buttonText,style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),))
    );
  }
}