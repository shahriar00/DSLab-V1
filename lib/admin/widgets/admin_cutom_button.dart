
import 'package:flutter/material.dart';

class AdminCustomButton extends StatelessWidget {
  double buttonheight;
  double buttonwidth;
  Color buttoncolor;
  String hintTextdata;
  TextEditingController controller;
  AdminCustomButton({super.key,required this.buttonheight,
  required this.buttonwidth,required this.buttoncolor,required this.hintTextdata,required this.controller});
  @override
  Widget build(BuildContext context) {   
    return Container(
      height: buttonheight,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(15),
        color: buttoncolor
      ),
      child: Center(
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
      ),
    );
  }
}